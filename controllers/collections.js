var collections = require('../models/collections');
var users = require('../models/users');

module.exports.controller = function (app) {
    app.post('/addCollection', function (req, res) {
        users.getId(req.body.email, function (row) {
            var userId = row.id;
            collections.addCollection(userId, req.body.collectionName, function (row) {
                collections.getId(req.body.collectionName, function (row) {






                    res.status(200).send(row);
                });
            });
        });
    });
}