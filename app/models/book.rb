class Book < ActiveRecord::Base
	belongs_to :category

	validates_presence_of :title, :author, :editor, :page

	#scope :by_category, -> (id, page) {where(category: id).page(page)}
end
