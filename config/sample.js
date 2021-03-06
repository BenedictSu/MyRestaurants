var config = {
    port: 2000,
    dbConnection: {
        user: "db_user_name",
        database: "MyRestaurant",
        password: "db_password",
        port: 5432,
        max: 10,
        idleTimeoutMillis: 30000
    },
    emailCredential: {
        email: "email@address",
        password: "email_password"
    }
}
module.exports = config;