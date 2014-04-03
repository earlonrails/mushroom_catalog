class Species
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  belongs_to :genus

  embeds_many :spore_prints, as: :photographic
end
