inspector = require 'schema-inspector'

class BaseModel
  constructor: (schema, values) ->
    result = inspector.sanitize schema, values
    @[key] = value for key, value of result.data

module.exports = BaseModel