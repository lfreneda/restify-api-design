inspector = require 'schema-inspector'

module.exports = (self, options) ->
  result = inspector.sanitize options.schema, options.values
  self[key] = value for key, value of result.data