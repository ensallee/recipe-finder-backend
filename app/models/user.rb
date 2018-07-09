class User < ApplicationRecord
  has_many :recipe_lists
  has_many :recipes, through: :recipe_lists

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

end
