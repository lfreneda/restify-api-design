findOne = require './db/queries/findOne'

class UserController

  getUser: (id, callback) ->
    findOne { id: id }, callback

  createUser: (user, callback) ->
    callback null, user

  updateUser: (user, callback) ->
    callback null, user

  deleteUser: (id, callback) ->
    callback null, null

module.exports = UserController