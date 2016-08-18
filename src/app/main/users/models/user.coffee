sanitizer = require './../../../core/shared/models/sanitizer'
schema = require './schema'

class User
  constructor: (values) ->
    sanitizer @, { schema: schema, values: values }

module.exports = User