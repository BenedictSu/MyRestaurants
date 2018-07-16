var model = require('../models/users');

module.exports.controller = function (app) {
    app.post('/login', function (req, res) {
        model.createOrGetId(req.body.email, function (row) {
            res.status(200).send(row);
        });
    });
}