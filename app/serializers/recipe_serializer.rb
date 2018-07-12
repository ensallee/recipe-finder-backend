class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :label, :source, :url, :image, :ingredients

end
