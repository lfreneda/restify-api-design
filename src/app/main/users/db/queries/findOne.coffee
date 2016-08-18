KatyQuery = require 'katy-query'
User = require './../../models/user'

module.exports = (where, callback) ->
  db.users.findOne where, (err, row) ->
    callback err if err
    callback err, new User KatyQuery.toModel(row)