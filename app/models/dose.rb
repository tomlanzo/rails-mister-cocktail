class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  #A dose must have a description
  validates :description, presence: true

  #A dose must have a cocktail
  validates :cocktail_id, presence: true

  #A dose must have a ingredient
  validates :ingredient_id, presence: true

  #A [cocktails, ingredient] pairins should be unique
  validates :cocktail_id, uniqueness: {scopre: :ingedient_id}
end
