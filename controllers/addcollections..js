var collections = require('../models/collections');
var collectionitems = require('../models/collectionitems');
var users = require('../models/users');

module.exports.controller = function (app) {
    app.post('/addCollection', function (req, res) {
        console.log("start: /addCollection");
        users.getId(req.body.email, function (row) {
            var userId = row.id;
            collections.addCollection(userId, req.body.collectionName, function (row) {
                collections.getId(req.body.collectionName, function (row) {
                    var collectionId = row.id;
                    collectionitems.addCollectionItems(userId, collectionId, req.body.selectedRestaurants, function (row) {
                        collections.getCollections(userId, function (row) {
                            var result = {};
                            row.map(function (item) {
                                if (!result[item.id]) {
                                    result[item.id] = {
                                        'id': item.id,
                                        'collectionname': item.collectionname,
                                        'restaurants': [{ 'name': item.name }]
                                    };
                                } else {
                                    result[item.id].restaurants.push({ 'name': item.name })
                                }
                            });
                            res.status(200).send(result);
                        });
                    });
                });
            });
        });
    });
}