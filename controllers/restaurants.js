var model = require('../models/restaurants');

module.exports.controller = function (app) {
    app.post('/searchRestaurants', function (req, res) {
        model.searchRestaurants(req.body, function (restaurants) {
            res.status(200).send(restaurants);
        });
    });
}