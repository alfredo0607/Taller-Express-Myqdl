import mysql from "mysql2/promise";
import dotenv from "dotenv";
dotenv.config();

const connection = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  database: process.env.DB_DATABASE,
  password: process.env.DB_PASSWORD,
  port: "3306",
  waitForConnections: true,
  connectionLimit: 10,
  maxIdle: 10,
  idleTimeout: 60000,
  queueLimit: 0,
});

const prueba = async () => {
  const newConnection = await connection.getConnection();

  const [rows] = await newConnection.query("SELECT * FROM habitaciones");

  console.log(rows);
};

prueba();

export default connection;
