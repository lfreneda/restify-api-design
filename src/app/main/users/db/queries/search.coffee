User = require './../../models/user'

module.exports = (search, callback) ->
  db.users.find search.where, search.options, (err, rows) ->
    callback err if err
    users = (new User(row) for row in rows)
    users