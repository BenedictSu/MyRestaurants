var express = require('express'),
    http = require('http'),
    path = require('path'),
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
app.use(app.router);*/

// dynamically include routes (Controller)
fs.readdirSync(path.join(__dirname, '/controllers')).forEach(function (file) {
    if (file.substr(-3) == '.js') {
        route = require('./controllers/' + file);
        route.controller(app);
    }
});

app.get('/', function (req, res) {
    console.log("start: /");
    res.status(200).sendFile(path.resolve(__dirname + "/view/index.html"));
});

app.use('/static', express.static(path.join(__dirname, '/public')))

http.createServer(app).listen(app.get('port'), function () {
    console.log('Express server listening on port ' + app.get('port'));
});
