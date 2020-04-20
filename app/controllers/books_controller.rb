class BooksController < ApplicationController
    def index
        books = Book.all
        respond_to do |format|
            format.html { render :index, locals: { books: books } }
        end
    end

    def show
        book = Book.find(params[:id])
        respond_to do |format|
            format.html { render :show, locals: { book: book } }
        end
    end
end
