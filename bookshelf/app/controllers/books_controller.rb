class BooksController < ApplicationController
	# notice we've defined a method called index for a BooksController instance. We tie this together with routes
	def index
		@books = Book.all # instance variables are prefixed with an @. If we said books = Book.all, we wouldn't be able to access books in the template
	end
end
