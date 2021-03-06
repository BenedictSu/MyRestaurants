var collections = require('../models/collections');
var users = require('../models/users');

module.exports.controller = function (app) {
    app.post('/getCollection', function (req, res) {
        console.log("start: /getCollection");
        users.getId(req.body.email, function (row) {
            var userId = row.id;
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
}