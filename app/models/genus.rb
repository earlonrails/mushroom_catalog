class Genus
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  belongs_to :family

  embeds_many :species
  embeds_many :spore_prints, as: :photographic
end
