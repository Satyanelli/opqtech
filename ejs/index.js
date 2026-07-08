const express = require("express");
const path = require("path")
const app = express();
const port= 3000;

app.set('view engine', 'ejs');
app.set('views', path.join (__dirname ,'views'))

app.get('/',(req,res) =>{

    let greet ="hello how are you";
    res.render("home.ejs",{greet})
})

app.get('/instagram/:username', (req,res) =>{
    res.render("insta.ejs")
})

app.listen (port, () => {
    console.log('server is running on port: ${port}')
})