BackboneMongoFullCalendar
=========================

backbone.js with mongodb and fullCalendar.js on rails 3.1

Sample code for http://blog.shinetech.com/2011/08/05/building-a-shared-calendar-with-backbone-js-and-fullcalendar-a-step-by-step-tutorial

This sample has be modified to use Mongodb with mongoid:

  * Update Gemfile - note that newer versions of mongo gems didn't work for me

  * Update config/application.rb
```
      #require 'rails/all'

      # Use Mongodb
      require "action_controller/railtie"
      require "action_mailer/railtie"
      require "active_resource/railtie"
      require "sprockets/railtie"
```

  * create config/mongoid.yml - 
    ```rails g mongoid:config```

  * Add ```include Mongoid::Document``` to each model class

  * create initializers/mongoid.rb which modifies as_json to return an 'id' and '_id':
```
    module Mongoid
      module Document
        def as_json(options={})
          attrs = super(options)
          attrs["id"] = attrs["_id"]
          attrs
        end
      end
    end
```

  * After installing mongodb, ```gem install futon4mongo``` to check out the database
