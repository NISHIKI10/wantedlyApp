class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :company
  has_many :favorites
  has_many :comments

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
