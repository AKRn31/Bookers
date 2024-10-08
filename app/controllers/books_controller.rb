class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    
  end

  def new
    @books = Book.all
    @book = Book.new
  end

  def create
    @books= Book.all
    @book= Book.new(books_params)
    if @book.save
      flash[:notice]= "Book was successfully created."
      redirect_to book_path(@book.id)
    else 
      render :index
    end
  end

  def show
    @book=Book.find (params[:id])
  end

  def edit
    @book=Book.find (params[:id])
  end

  def update
    @book=Book.find(params[:id])
    if @book.update(books_params)
    flash[:notice]= "Book was successfully created."
    redirect_to book_path(@book)
    else
      render:edit
    end
  end

  def destroy
    @book=Book.find(params[:id])
    if @book.destroy
      flash[:notice]="Book was successfully destroyed."
      redirect_to books_path
    else
      flash[:alert]="Failed to destroy book."
      render:edit
    end
  end



private
  def books_params
  params. require(:book).permit(:title, :body)
  end

end
