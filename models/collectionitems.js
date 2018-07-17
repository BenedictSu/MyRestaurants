var dbPool = require('./database.js');

var Collectionitems = function () {
}

Collectionitems.addCollectionItems = function (userId, collectionId, collectionItems, handler) {

    dbPool.connect(function (err, client, done) {
        if (err) {
            console.log("not able to get connection " + err);
        }
        console.log("userId: " + userId + ", collectionId: " + collectionId + ", collectionItems: " + JSON.stringify(collectionItems));

        var nowWithTimezone = new Date();
        var now = new Date(Date.UTC(
            nowWithTimezone.getFullYear(), nowWithTimezone.getMonth(), nowWithTimezone.getDate(), nowWithTimezone.getHours(), nowWithTimezone.getMinutes(), nowWithTimezone.getSeconds(), nowWithTimezone.getMilliseconds())
        );

        var query = '';
        var index = 0;
        collectionItems.forEach((item) => {
            query +=
                " with restaurant" + index + " as (" +
                " select * from restaurants where restaurants.name = '" + item.name.replace(/'/g, "''") + "'" +
                " )" +
                " insert into collectionitems(collectionid,restaurantid,isdeleted,lastupdateddate,lastupdatedby)" + 
                " values(" + collectionId + ", (SELECT id FROM restaurant" + index + "), false, '" + now.toISOString() + "', " + userId + ");";
            index++;
        });

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

module.exports = Collectionitems;