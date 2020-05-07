class BooksController < ApplicationController

  before_action :authenticate_user!
  def index
    @books = Book.all
    @search = params["search"]
    if @search.present?
        @title = @search["title"]
        @books = Book.where("title ILIKE ?", "%#{@title}%")
    
      
  end
    end
  
    def show
     @book = Book.find(params[:id])
      @cart_item = current_cart.cart_items.new
      @wishlist_item = current_wishlist.wishlist_items.new
      if @book.reviews.blank?
        @average_review = 0
      else
        @average_review = @book.reviews.average(:rating).round(2)
      end
      respond_to do |format|
        format.html { render :show, locals: { book: @book } }
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
    book = Book.new(params.require(:book).permit(:title, :author, :price, :genre,:publication_date,:page_number, :book_format, :overview, :rating))
    # respond_to block
    respond_to do |format|
      format.html do
        # if question saves
        if book.save!
          # success message
          flash[:success] = "Product added successfully"
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
    books = Book.find(params[:id])
    # respond_to block
    respond_to do |format|
      format.html do
        # if question updates with permitted params
        if books.update(params.require(:book).permit(:title, :author, :price, :genre,:publication_date,:page_number, :book_format, :overview))
          # success message
          flash[:success] = 'Product updated successfully'
          # redirect to index
          redirect_to books_url
        # else
        else
          # error message
          flash.now[:error] = 'Error: Product could not be updated'
          # render edit
          render :edit, locals: { books: books }
        end
      end
    end
  end

  def destroy
    # load existing object again from URL param
    book = Book.find(params[:id])
    # destroy object
    book.destroy
    # respond_to block
    respond_to do |format|
        format.html do
            # success message
            flash[:success] = 'Book removed successfully'
            # redirect to index
            redirect_to books_url
        end
    end
end



  def review
    respond_to do |format|
      format.html { render :review, locals: { feedback: {} } }
    end
  end
  
  def leave_feedback
    required = [:name, :email, :reply, :feedback_type, :message]
    form_complete = true
    required.each do |f|
      if params.has_key? f and not params[f].blank?
        # that's good news. do nothing
      else
        form_complete = false
      end
    end
    if form_complete
      form_status_msg = 'Thank you for your feedback!'
    else
      form_status_msg = 'Please fill in all the remaining form fields and resubmit.'
    end
    respond_to do |format|
      format.html { render :review, locals: { status_msg: form_status_msg, feedback: params } }
    end
  end
end