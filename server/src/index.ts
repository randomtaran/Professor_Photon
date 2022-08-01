import express from "express";
import connectDB from "./db/db";
import dotenv from "dotenv";
dotenv.config();

const app = express();

const port = 8000;

app.get("/", (req, res) => {
  res.send("basic send");
});

const start = async () => {
  try {
    await connectDB(process.env.MONGO_URL);
    app.listen(port, () => console.log(`server is listening on the port ${port}...`));
  } catch (error) {
    console.log(error);
  }
};

start();
