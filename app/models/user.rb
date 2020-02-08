class User < ApplicationRecord
  validates :username,uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_comments
  has_many :user_comment_posts, through: :comments, source: :post
  has_many :favorites
  has_many :favorite_posts, through: :favorites, source: :post
end
