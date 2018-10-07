'use strict';

module.exports = function(app) {
	app.get('/', function(req, res) {
		res.render('pages/index');
	});

	app.get('/about', function(req, res) {
		res.render('pages/about');
	});

	app.get('/tenant', function(req, res) {
		res.render('pages/tenant');
	});
	
	app.get('/contact', function(req, res) {
		res.render('pages/contact');
	});
};


