const mongoose = require("mongoose");

const connectDB = (url) => {
  return mongoose
    .connect(url)
    .then(() => console.log("Connected... "))
    .catch(() => console.log("Failed"));
};

module.exports = connectDB;
