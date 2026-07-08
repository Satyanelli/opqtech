const express = require("express")
const app = express();
const port = 3000;
const path = require('path')
const{v4: uuidv4} = require('uuid')

let posts =[
    {id : 'a', username : 'satya' , content: 'this is my first post' },
        {id : 'b', username : 'gopp' , content: 'this is my third post' },
        {id : 'c', username : 'ramesh' , content: 'this is my second post' }
]

app.set("view engine","ejs");
app.set("views", path.join(__dirname , "views"))
 
app.use(express.static(path.join(__dirname,"public")))
app.use(express.urlencoded({extended:true}))

app.get('/',(req,res) =>{
    res.send('server is reachable')

});

app.get('/posts', (req,res) =>{
    res.render('index.ejs',{posts})
});

//handle post creation

app.get('/posts/newposts',(req,res) =>{
    res.render("new.ejs")
})

app.post('/posts',(req,res) =>{
    console.log(req.body);
    posts.push({id:uuidv4(), ...req.body})
    res.redirect("/posts")
});

app.listen(port, () =>{
    console.log('server is running at the port: ${port}')
});