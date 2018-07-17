var config = require('../config');
var nodemailer = require('nodemailer');

var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: config.emailCredential.email,
        pass: config.emailCredential.password
    }
});

module.exports.controller = function (app) {
    app.post('/sendMail', function (req, res) {
        console.log("start: /sendMail");
        console.log(JSON.stringify( req.body));
        var mailOptions = {
            from: req.body.senderemail,
            to: req.body.recipientemail,
            subject: 'Invitation to My Restaurant!',
            text: 'Please follow this link: http://localhost:2000/?email='+req.body.senderemail
        };

        transporter.sendMail(mailOptions, function (error, info) {
            if (error) {
                console.log(error);
            } else {
                console.log('Email sent: ' + info.response);
            }
            res.status(200).send(result);
        });
    });
}