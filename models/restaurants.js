var dbPool = require('./database.js');

var Restaurants = function () {
}

Restaurants.getRestaurants = function (handler) {
    dbPool.connect(function (err, client, done) {
        if (err) {
            console.log("not able to get connection " + err);
        }
        client.query('SELECT * FROM restaurants', function (err, result) {
            done(); // closing the connection;
            if (err) {
                console.log(err);
                handler(null);
            } else {
                console.log("successfully retrieved restaurants");
                console.log("number retrieved: " + result.rows.length);
                handler(result.rows);
            }
        });
    });
}

module.exports = Restaurants;