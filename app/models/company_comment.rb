class CompanyComment < ApplicationRecord
  belongs_to :company, optional: true
  belongs_to :post, optional: true

  validates :body, presence: true
end
