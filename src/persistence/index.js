const mysql = require('./mysql');
const sqlite = require('./sqlite');


if (process.env.MYSQL_HOST)
    module.exports = mysql;
else
    module.exports = sqlite;
