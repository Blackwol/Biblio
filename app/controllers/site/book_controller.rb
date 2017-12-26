class Site::BookController < ApplicationController

	def index
		@categories = Category.all
		@category = Category.find(params[:format])
		@books = Book.by_category(@category, params[:page])
	end
end
