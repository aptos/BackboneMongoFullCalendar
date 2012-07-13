class Event
    include Mongoid::Document
    field :title, :type => String
    field :color, :type => String
    field :start, :type => String
    field :end, :type => String
end
