class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  #A dose must have a description

  #A [cocktails, ingredient] pairins should be unique
  validates :ingredient, uniqueness: {
    scope: :cocktail,
    message: "This ingredient is already included in your cocktail"}
end
