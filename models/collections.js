var dbPool = require('./database.js');

var Collections = function () {
}

Collections.addCollection = function (userId, collectionName, handler) {

    dbPool.connect(function (err, client, done) {
        if (err) {
            console.log("not able to get connection " + err);
        }
        console.log("userId: " + userId + ", collectionName: " + collectionName);
        var nowWithTimezone = new Date();
        var now = new Date(Date.UTC(
            nowWithTimezone.getFullYear(), nowWithTimezone.getMonth(), nowWithTimezone.getDate(), nowWithTimezone.getHours(), nowWithTimezone.getMinutes(), nowWithTimezone.getSeconds(), nowWithTimezone.getMilliseconds())
        );

        var query =
            " insert into collection(ownerid,collectionname,isdeleted,lastupdateddate,lastupdatedby) values(" + userId + ", '" + collectionName.trim() + "', false, '" + now.toISOString() + "', " + userId + ");";

        client.query(query, function (err, result) {
            done(); // closing the connection;
            if (err) {
                console.log(err);
            } else {
                console.log("successfully inserted");
            }
            handler(result);
        });
    });
}

Collections.getId = function (collectionName, handler) {
    dbPool.connect(function (err, client, done) {
        if (err) {
            console.log("not able to get connection " + err);
        }
        console.log("collectionName: " + collectionName);

        var query =
            "SELECT id FROM collection where collection.collectionname = '" + collectionName.trim() + "'";

        client.query(query, function (err, result) {
            done(); // closing the connection;
            if (err) {
                console.log(err);
                handler({ "id": 0 });
            } else {
                console.log("collection id retrieved: " + JSON.stringify(result.rows[0]));
                handler(result.rows[0]);
            }
        });
    });
}

Collections.getCollections = function (userId, handler) {
    dbPool.connect(function (err, client, done) {
        if (err) {
            console.log("not able to get connection " + err);
        }
        console.log("userId: " + userId);

        var query =
            "SELECT" +
            " col.id, col.collectionname, res.name" +
            " FROM" +
            " collection as col join collectionitems as citem" +
            " ON col.id = citem.collectionid" +
            " join restaurants as res" +
            " ON citem.restaurantid = res.id" +
            " WHERE" +
            " col.ownerid = " + userId +
            " AND citem.isdeleted = false" +
            " ORDER BY col.id ASC;";

        client.query(query, function (err, result) {
            done(); // closing the connection;
            if (err) {
                console.log(err);
                handler({});
            } else {
                console.log("collection retrieved: " + JSON.stringify(result.rows));
                handler(result.rows);
            }
        });
    });
}

module.exports = Collections;