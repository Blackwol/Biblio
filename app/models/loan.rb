class Loan < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  #scopes
  scope :by_category, -> (id, page) {where(user: id).page(page)}
end
