/*var http = require('http');

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write('Hello World!');
    res.end();
}).listen(2000); 

console.log('Server running at http://127.0.0.1:2000/');
*/

var express = require('express'),
    http = require('http'),
    //path = require('path'),
    app = express(),
    fs = require('fs'),
    config = require('./config');

// some environment variables
app.set('port', config.port);

/*
app.set('views', __dirname + '/views');
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(express.cookieParser('your secret here'));
app.use(express.session());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));*/

// dynamically include routes (Controller)
fs.readdirSync('./MyRestaurants/controllers').forEach(function (file) {
  if(file.substr(-3) == '.js') {
      route = require('./controllers/' + file);
      route.controller(app);
  }
});

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
