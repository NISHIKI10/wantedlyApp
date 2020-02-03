class User < ApplicationRecord
  validates :username,uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites 
  has_many :comments
  has_many :favorite_posts, through: :favorites, source: :post
end
