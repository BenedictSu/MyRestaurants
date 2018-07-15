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

Restaurants.searchRestaurants = function (data, handler) {
    dbPool.connect(function (err, client, done) {
        if (err) {
            console.log("not able to get connection " + err);
        }
        var day = data.day;
        var time = data.time;
        console.log("day: " + day + ", time: " + time);
        var query = "SELECT distinct res.name" +
            " FROM" +
            " restaurants as res" +
            " JOIN operatinghours as oh" +
            " on res.id = oh.restaurantid";
        if (null != day && "*" != day && "" != day) {
            query += " WHERE oh.day = '" + day + "'";
            if (null != time && "" != time) {
                query += " and (openingtime <= '" + time + ":00' and '" + time + ":00' <= closingtime)";
            }
        } else {
            if (null != time  && "" != time) {
                query += " WHERE (openingtime <= '" + time + ":00' and '" + time + ":00' <= closingtime)";
            }
        }
        
        client.query(query, function (err, result) {
            done(); // closing the connection;
            if (err) {
                console.log(err);
                handler({});
            } else {
                console.log("successfully retrieved restaurants");
                console.log("number retrieved: " + result.rows.length);
                handler(result.rows);
            }
        });
    });
}

module.exports = Restaurants;