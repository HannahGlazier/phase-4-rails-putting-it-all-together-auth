class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :intructions, :minutes_to_complete
  has_one :user
end
