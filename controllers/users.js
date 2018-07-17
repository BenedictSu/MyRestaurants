var model = require('../models/users');

module.exports.controller = function (app) {
    app.post('/login', function (req, res) {
        console.log("start: /login");
        model.createUser(req.body.email, function (data) {
            model.getId(req.body.email, function (row) {
                res.status(200).send(row);
            });
        });
    });
}