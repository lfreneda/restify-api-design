BaseModel = require './../baseModel'
schema = require './schema'

class User extends BaseModel
  constructor: (params) -> super schema, params

module.exports = User