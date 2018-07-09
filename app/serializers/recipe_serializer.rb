class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :cooking_instructions
end
