# For use with Backbone.js which expects 'id' not '_id' which is set by mongo
module Mongoid
  module Document
    def as_json(options={})
      attrs = super(options)
      attrs["id"] = attrs["_id"]
      attrs
    end
  end
end

