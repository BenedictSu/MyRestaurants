var pg = require("pg");
var config = require('../config');

var dbConfig = {
    user: config.dbConnection.user,
    database: config.dbConnection.database,
    password: config.dbConnection.password,
    port: config.dbConnection.port,
    max: config.dbConnection.max,
    idleTimeoutMillis: config.dbConnection.idleTimeoutMillis,
};

var pool = new pg.Pool(dbConfig);

module.exports = pool;