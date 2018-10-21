'use strict';

// ================================================================
// get all the tools we need
// ================================================================
const express = require('express'),
path = require('path'),
morgan = require('morgan'),
mysql = require('mysql'),
myConnection = require('express-myconnection'),
passport = require('passport'),
Strategy = require('passport-github').Strategy;





// ================================================================
// Githunb oAth
// ================================================================

passport.use(new Strategy({
  clientID: "83804980b0695b84a854",
  clientSecret: "67b4fa3a2cabed0e636d914c5160af0159a465d4",
  callbackURL: "http://rento.gq/tenant"
},
function(accessToken, refreshToken, profile, cb) {
  User.findOrCreate({ githubId: profile.id }, function (err, user) {
    return cb(err, user);
  });
}
));


// Configure Passport authenticated session persistence.
passport.serializeUser(function(user, cb) {
  cb(null, user);
});

passport.deserializeUser(function(obj, cb) {
  cb(null, obj);
});

var app = express();
// ================================================================
// Githunb oAth
// ================================================================

app.use(require('cookie-parser')());
app.use(require('body-parser').urlencoded({ extended: true }));
app.use(require('express-session')({ secret: 'keyboard cat', resave: true, saveUninitialized: true }));
app.use(passport.initialize());
app.use(passport.session());


app.get('/login/github',
  passport.authenticate('github', { scope: [ 'user:email' ] }),
  function(req, res){
    // The request will be redirected to GitHub for authentication, so this
    // function will not be called.
  });

app.get('/auth/github/callback', 
  passport.authenticate('github', { failureRedirect: '/' }),
  function(req, res) {
    res.redirect('/');
  });

var routes = require('./routes/index.js');

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




// importing routes
const tenantRoutes = require('./routes/tenant');
const propertyRoutes = require('./routes/property');
const houseRoutes = require('./routes/house');
const cotenantRoutes = require('./routes/cotenant');
const rentsRoutes = require('./routes/rents');


// ================================================================
// setup routes
// ================================================================
app.use('/tenant', tenantRoutes);
app.use('/property', propertyRoutes);
app.use('/house', houseRoutes);
app.use('/cotenant', cotenantRoutes);
app.use('/rents', rentsRoutes);
routes(app);





// ================================================================
// start our server
// ================================================================
let port = process.env.PORT;
if (port == null || port == "") {
	port = 8000;
}
app.listen(port);
