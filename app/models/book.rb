class Book < ActiveRecord::Base
	#status
	enum status: [:available, :unavailable]

	belongs_to :category
	belongs_to :user

	validates_presence_of :title, :author, :editor, :page

	scope :by_category, -> (id, page) {where(category: id).page(page)}
end
