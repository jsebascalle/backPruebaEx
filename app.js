var express = require('express');
const mysql = require('mysql');

var app = express();
app.set('views', './views');
app.set('view engine', 'pug');

// connection configurations
const mc = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'wifipei'
});
 
// connect to database
mc.connect();

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});

var routes = require('./routes/routes'); //importing route
routes(app); //register the route