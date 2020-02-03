class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :post
end
