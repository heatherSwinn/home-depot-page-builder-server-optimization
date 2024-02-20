import { createClient } from "redis";

// Create and configure the Redis client
const redisClient = createClient();

// Handle Redis client errors
redisClient.on("error", (error) => {
  console.error("Redis client error:", error);
});

export default redisClient;