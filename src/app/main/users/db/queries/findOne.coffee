User = require './../../models/user'

module.exports = (id, callback) ->
  db.users.findOne { id: id }, (err, row) ->
    callback err if err
    callback err, new User(row)