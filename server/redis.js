import { createClient } from "redis";

// Create and configure the Redis client
const redisClient = createClient({
  url: "redis://red-cnafeqmv3ddc73da0lhg:6379",
});

// Handle Redis client errors
redisClient.on("error", (error) => {
  console.error("Redis client error:", error);
});

export default redisClient;
