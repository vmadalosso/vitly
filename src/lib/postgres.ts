import postgres from 'postgres'

const DATABASE_URL = process.env.POSTGRES_URL || 'postgresql://docker:docker@localhost:5432/vitly'

export const sql = postgres(DATABASE_URL)