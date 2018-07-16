var dbPool = require('./database.js');

var Users = function () {
}

Users.createOrGetId = function (data, handler) {
    dbPool.connect(function (err, client, done) {
        if (err) {
            console.log("not able to get connection " + err);
        }
        console.log("email: " + data);
        var query1 =
            "do" +
            " $do$" +
            " BEGIN" +
            " IF EXISTS (SELECT email FROM users where users.email = '" + data.trim() + "') THEN" +
            " " +
            " ELSE" +
            " insert into users(email) values('" + data.trim() + "');" +
            " END IF;" +
            " END;" +
            " $do$";

        var query2 =
            "SELECT id FROM users where users.email = '" + data.trim() + "'";

        client.query(query1, function (err, result) {
            if (err) {
                console.log(err);
            } else {
                console.log("successfully inserted");
                client.query(query2, function (err, result) {
                    done(); // closing the connection;
                    if (err) {
                        console.log(err);
                        handler({"id":0});
                    } else {
                        console.log("successfully retrieved user id");
                        console.log("id retrieved: " + JSON.stringify(result.rows[0]));
                        handler(result.rows[0]);
                    }
                });
            }
        });

        
    });
}

module.exports = Users;