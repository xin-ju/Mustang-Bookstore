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

    def new
        book = Book.new
        respond_to do |format|
          format.html { render :new, locals: { book: book } }
        end
      end

      def create
        # new object from params
        book = Book.new(params.require(:book).permit(:title, :author, :price, :genre))
        # respond_to block
        respond_to do |format|
            format.html do
          # if question saves
          if book.save
            # success message
            flash[:success] = "Producted added successfully"
            # redirect to index
            redirect_to books_url
          # else
          else
            # error message
            flash.now[:error] = "Error: Product could not be added"
            # render new
            render :new, locals: { book: book }

      end
    end
  end
end

    def edit
        book = Book.find(params[:id])
        respond_to do |format|
          format.html { render :edit, locals: { book: book } }
        end
      end

      def update
        # load existing object again from URL param
        book = Book.find(params[:id])
        # respond_to block
        respond_to do |format|
            format.html do
          # if question updates with permitted params
          if book.update(params.require(:book).permit(:title, :author, :price, :genre))
            # success message
            flash[:success] = 'Product updated successfully'
            # redirect to index
            redirect_to books_url
          # else
          else
            # error message
            flash.now[:error] = 'Error: Product could not be updated'
            # render edit
            render :edit, locals: { book: book }
         end
       end
      end
    end

    def leave_review
      respond_to do |format|
        format.html { render :review }
      end
    end
end
