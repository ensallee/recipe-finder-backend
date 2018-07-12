class RecipeListSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :recipe
  
end
