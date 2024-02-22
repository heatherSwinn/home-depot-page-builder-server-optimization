import { createClient } from "redis";

// Create and configure the Redis client
const redisClient = createClient({
  url: "redis://red-cnbqh1ed3nmc73aifcj0:6379",
});

// Handle Redis client errors
redisClient.on("error", (error) => {
  console.error("Redis client error:", error);
});

export default redisClient;
