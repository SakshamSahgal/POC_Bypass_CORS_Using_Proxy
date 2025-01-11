const express = require("express");
const cors = require("cors");
const app = express();
// for cross origin resource sharing
app.use(
    cors({
        origin: process.env.CORS_ORIGIN, // allow to server to accept request from different origin
        credentials: true,  // to allow cookies from client
    })
);
app.use(express.json());

module.exports = { app };