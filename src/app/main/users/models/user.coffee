sanitize = require './../../../core/shared/models/binder'
schema = require './schema'

class User
  constructor: (values) ->
    sanitize @, { schema: schema, values: values }

module.exports = User