import { createClient } from "redis";

// Create and configure the Redis client
const redisClient = createClient({
  // url: "redis://red-cnbnecol6cac73ehl1sg:6379",
});

// Handle Redis client errors
redisClient.on("error", (error) => {
  console.error("Redis client error:", error);
});

export default redisClient;
