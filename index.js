var express = require('express'),
    http = require('http'),
    path = require('path'),
    app = express(),
    fs = require('fs'),
    config = require('./config'),
    bodyParser = require("body-parser");


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

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

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

sseClients = [];


app.get('/sse', function (req, res) {
    console.log("start: /sse");

    if (req.headers.accept && req.headers.accept == 'text/event-stream') {
        if (req.url == '/sse') {
            sseClients.push(res);
            res.writeHead(200, {
                'Content-Type': 'text/event-stream',
                'Cache-Control': 'no-cache',
                'Connection': 'keep-alive'
            });
            constructSSE(res, 1, 'data');
        } else {
            res.writeHead(404);
            res.end();
        }
    }
});

function sendSSE() {
    console.log("start: sendSSE");
    sseClients.forEach(function (res) {
        constructSSE(res, 1, 'data');
    });
}

function constructSSE(res, id, data) {
    res.write('id: ' + id + '\n');
    res.write("data: " + data + '\n\n');
  }

sseFunction = sendSSE;