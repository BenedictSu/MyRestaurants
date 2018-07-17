var collections = require('../models/collections');
var collectionitems = require('../models/collectionitems');
var users = require('../models/users');

module.exports.controller = function (app) {
    app.post('/updateCollection', function (req, res) {
        console.log("start: /updateCollection");
        users.getId(req.body.email, function (row) {
            var userId = row.id;
            collections.updateCollection(userId, req.body.collectionId, req.body.collectionName, function (row) {
                collectionitems.deleteCollectionItems(userId, req.body.collectionId, function (row) {
                    collectionitems.addCollectionItems(userId, req.body.collectionId, req.body.selectedRestaurants, function (row) {
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