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
const propertyRoutes = require('./routes/property');

// ================================================================
// setup our express application
// ================================================================
app.set('views', path.join(__dirname, 'views'));
app.use('/public', express.static(process.cwd() + '/public'));
app.set('view engine', 'ejs');

// middlewares
app.use(morgan('dev'));
app.use(myConnection(mysql, {
  host: 'ol5tz0yvwp930510.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
  user: 'dyi2o9a8uhijcrga',
  password: 'nocqgf767rzbmry1',
  port: 3306,
  database: 'thm01jearyo4v2jw'
}, 'single'));
app.use(express.urlencoded({extended: false}));

// ================================================================
// setup routes
// ================================================================
app.use('/tenant', tenantRoutes);
app.use('/property', propertyRoutes);
routes(app);

// ================================================================
// start our server
// ================================================================
let port = process.env.PORT;
if (port == null || port == "") {
  port = 8000;
}
app.listen(port);
