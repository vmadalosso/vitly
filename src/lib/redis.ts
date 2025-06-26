import { createClient } from 'redis'

const REDIS_URL = process.env.REDIS_URL || 'redis://:docker@localhost:6379'

export const redis = createClient({
  url: REDIS_URL,
})

redis.connect()