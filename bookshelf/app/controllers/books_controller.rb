class BooksController < ApplicationController
	# notice we've defined a method called index for a BooksController instance. We tie this together with routes
	def index
		@books = Book.paginate(page: params[:page], per_page: 10) # instance variables are prefixed with an @. If we said books = Book.all, we wouldn't be able to access books in the template
	end
	
	def show
		@book = Book.find params[:id]
		@comments = @book.comments.paginate(page: params[:page], per_page: 10, order: 'created_at ASC')
	end
end
