class Site::HomeController < ApplicationController

	def index
		@categories = Category.all
		@books = Book.all
		@user = current_user
	end
end
