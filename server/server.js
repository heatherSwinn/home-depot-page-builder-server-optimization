import express from "express";
import pg from "pg";
import dotenv from "dotenv";
import redisClient from "./redis.js";

dotenv.config({ path: "../.env" });

const { PORT, DATABASE_URL } = process.env;

const client = new pg.Client({
  connectionString: DATABASE_URL,
});

const DEFAULT_EXPIRATION = 120;

(async () => {
  await client.connect();

  const app = express();

  app.use(express.json());

  await redisClient.connect();

  app.get("/api/products", async (req, res, next) => {
    // console.log("Received request for /api/products");
    try {
      const products = await redisClient.get("products");
      if (products != null) {
        console.log("Cache hit");
        res.send(JSON.parse(products));
      } else {
        console.log("Sending query to postgresql");
        const query = "SELECT * from products";
        const data = await client.query(query);
        await redisClient.set("products", JSON.stringify(data.rows));
        await redisClient.expire("products", DEFAULT_EXPIRATION);
        res.status(200).send(data.rows);
      }
    } catch (error) {
      console.error("Error with products query", error);
      next(error);
    }
  });

  // ========== Get Paramatize Product ===========
  // p is short for products (mirrors Home Depot search url)
  app.get("/api/p/:id", async (req, res, next) => {
    const { id } = req.params;

    try {
      const currentProduct = await redisClient.get(`product${id}`);
      if (currentProduct != null) {
        console.log("Cache hit");
        res.send(JSON.parse(currentProduct));
      } else {
        console.log("Sending query to postgresql");
        const query = {
          text: "SELECT * FROM products WHERE id = $1",
          values: [id],
        };
        const data = await client.query(query);
        await redisClient.set(`product${id}`, JSON.stringify(data.rows));
        await redisClient.expire(`product${id}`, DEFAULT_EXPIRATION);
        res.status(200).send(data.rows);
      }
    } catch (err) {
      console.error("Error with getting specific product", err.stack);
      next(err);
    }
  });

  app.get("/api/:table_name/:id", async (req, res, next) => {
    const { table_name, id } = req.params;

    try {
      const currentTable = await redisClient.get(`${table_name}${id}`);
      if (currentTable != null) {
        console.log("Cache hit");
        res.send(JSON.parse(currentTable));
      } else {
        console.log("Sending query to postgresql");
        const query = {
          text: `SELECT * FROM ${table_name} WHERE product_id = $1`,
          values: [id],
        };
        const data = await client.query(query);
        await redisClient.set(`${table_name}${id}`, JSON.stringify(data.rows));
        await redisClient.expire(`${table_name}${id}`, DEFAULT_EXPIRATION);
        res.status(200).send(data.rows);
      }
    } catch (err) {
      console.error("Error with querying table", err.stack);
      next(err);
    }
  });

  app.use((err, req, res, next) => {
    console.error("Reached middleware error handling", err.stack);
    res.status(500).send("Sorry - something went wrong!");
  });

  app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
  });
})();
