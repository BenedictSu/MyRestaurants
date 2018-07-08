var model = require('../models/restaurants');

module.exports.controller = function (app) {
    app.get('/getRestaurants', function (req, res) {
        console.log("start: /getRestaurants");
        model.getRestaurants(function (restaurants) {
            if (null == restaurants) {
                res.status(400).send("Fail");
            } else {
                res.status(200).send(restaurants)
            }
        });
    });
}
