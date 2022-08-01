import mongoose from "mongoose";

const connectDB = (url) => {
  return mongoose
    .connect(url)
    .then(() => console.log("Connected... "))
    .catch(() => console.log("Failed"));
};

export default connectDB;
