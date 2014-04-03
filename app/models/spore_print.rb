class SporePrint
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :color, type: String
  field :src, type: String

  embedded_in :photographic, polymorphic: true
end
