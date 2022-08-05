const express = require("express");
const connectDB = require("./db/db");
const { getCredentials } = require("./controllers/google_utils");
const dotenv = require("dotenv");
const { googleRouter } = require("./routes/google");
dotenv.config();

const app = express();

const port = 8000;

app.get("/", (req, res) => {
  res.send("basic send");
});

app.use("/", googleRouter);

const start = async () => {
  try {
    await connectDB(process.env.MONGO_URL);
    getCredentials();
    app.listen(port, () => console.log(`server is listening on the port ${port}...`));
  } catch (error) {
    console.log(error);
  }
};

start();
