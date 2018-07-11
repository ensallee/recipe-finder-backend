class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :label, :source, :image, :ingredients
  
end
