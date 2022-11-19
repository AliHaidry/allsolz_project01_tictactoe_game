// importing modules
const express = require("express");
const http = require("http");
const mongoose = require("mongoose");

const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

var io = require("socket.io")(server);

// client -> middleware -> server
// middleware
app.use(express.json());


const DB = "mongodb+srv://AliHaidry:England1994@cluster0.s3cmb4h.mongodb.net/?retryWrites=true&w=majority";

mongoose.connect(DB).then(() => {
    console.log("Connection is Successful");
})
.catch((e) => {
    console.log(e)
});

server.listen(port, "0.0.0.0", () => {
    console.log(`Server Started and Running on Port ${port}`);
});



