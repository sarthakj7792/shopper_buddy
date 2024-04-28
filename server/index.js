const PORT = 3000;
const express = require('express');
const authRouter=require('./routes/auth');
const app = express();
const mongoose = require('mongoose');
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');
const DB = 'mongodb+srv://sarthaksethi5:ugo8me@cluster0.0dg3gh7.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0';
//middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);

//connections
mongoose.connect(DB).then(()=>{
    console.log("Connection Successful");
}).catch(e=>console.log(e))


app.listen(PORT,"0.0.0.0",()=>{
    console.log(`Server is running on port ${PORT}`);
})