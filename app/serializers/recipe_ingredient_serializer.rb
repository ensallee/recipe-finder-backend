class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :id, :amount
  has_one :ingredient
  has_one :recipe
end
