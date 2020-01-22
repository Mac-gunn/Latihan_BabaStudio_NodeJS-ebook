var express = require('express');
var app = express();
var logger = require('morgan');
var path = require('path');
var bodyParser = require('body-parser');
var session = require('express-session');
var ejs = require('ejs-lint');
var flash = require('express-flash');


var expressku = require('./routes/expressku');
var adminku = require('./routes/adminku');
var conn = require('express-myconnection');
var mysql= require('mysql');


app.set('port', process.env.port ||3000);
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(flash());

//app.use('/Public', express.static(__dirname + '/Public'));


app.use('/Public', express.static(path.join(__dirname,'/Public')));
app.use(bodyParser.urlencoded({extended:false}));
app.use(
	conn(mysql,{
		host: '127.0.0.1',
		user: 'root',
		password: '',
		database: 'express_db'
	}, 'single')
);

app.use(
	session({
		secret: 'babastudio',
		resave: false,
		saveUninitialized: true,
		cookie: {maxAge :120000}
	})
);


app.get('/', function(req, res){
	res.send('server is running on port '+app.get('port'));
});


app.get('/express', expressku.home);
app.get('/express/company', expressku.company);
app.get('/express/services', expressku.services);
app.get('/express/news/:id', expressku.news);
app.get('/express/contact', expressku.contact);

app.get('/express/admin', adminku.login);
app.get('/express/admin/login', adminku.login);
app.get('/express/admin/home', adminku.home);
app.get('/express/admin/dashboard',adminku.dashboard);
app.get('/express/admin/add_news', adminku.add_news);
app.get('/express/admin/edit_news', adminku.edit_news);
app.get('/express/admin/edit_news/:title', adminku.edit_news);
app.get('/express/admin/delete_news/:title', adminku.delete_news);
app.get('/express/admin/logout', adminku.log_out);
app.post('/express/admin/login', adminku.login);
app.post('/express/admin/add_news', adminku.process_add_news);
app.post('/express/admin/edit_news/:title', adminku.process_edit_news);

app.listen(app.get('port'), function(){
	console.log('server running on port'+app.get('port'));
});