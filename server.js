'use strict';

// ================================================================
// get all the tools we need
// ================================================================
const express = require('express'),
      path = require('path'),
      morgan = require('morgan'),
      mysql = require('mysql'),
      myConnection = require('express-myconnection');
var routes = require('./routes/index.js');

var app = express();

// importing routes
const tenantRoutes = require('./routes/tenant');


// ================================================================
// setup our express application
// ================================================================
app.set('views', path.join(__dirname, 'views'));
app.use('/public', express.static(process.cwd() + '/public'));
app.set('view engine', 'ejs');

// middlewares
app.use(morgan('dev'));
app.use(myConnection(mysql, {
  host: 'localhost',
  user: 'root',
  password: 'password',
  port: 3306,
  database: 'propertyrentalmanagement'
}, 'single'));
app.use(express.urlencoded({extended: false}));

// ================================================================
// setup routes
// ================================================================
app.use('/tenant', tenantRoutes);
routes(app);

// ================================================================
// start our server
// ================================================================
let port = process.env.PORT;
if (port == null || port == "") {
  port = 8000;
}
app.listen(port);
