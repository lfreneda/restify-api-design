massive = require 'massive'
config  = require './../config'
module.exports = massive.connectSync { connectionString: config.connectionString }
