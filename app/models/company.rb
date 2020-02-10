class Company < ApplicationRecord
  validates :companyname,uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :company_comments, dependent: :destroy
end
