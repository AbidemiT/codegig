const Sequelize = require('sequelize');
const db = new Sequelize('codegig', 'postgres', 'tasuedite1', {
  host: 'localhost',
  port: 5432,
  dialect: 'postgres',
  ssl: true,
  operatorsAliases: false,

  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000,
  },
});
// {
//   "use_env_variable":"DB_CONNECTION_STRING",
//   "dialect":"postgres",
//   "ssl":true,
//   "dialectOptions":{
//      "ssl":{
//         "require":true
//      }
//   }
// }
// const db = new Sequelize('postgres://postgres:@127.0.0.1:5432/codegig?ssl=true');
// const db = new Sequelize('postgres://kbfwhpmwpzcxyj:da07969684b8a2a0968f5516144806b5a42c9d502809802a83f18c98c706dd05@ec2-54-221-243-211.compute-1.amazonaws.com:5432/d2mvih7jco3mp4?ssl=true');

module.exports = db;