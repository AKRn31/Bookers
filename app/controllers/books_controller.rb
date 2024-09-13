class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    redirect_to book_path(@book.id)
    else
      render :index
    end
  end

  def update
  end

  def destroy
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book=Book.find　(params[:id])
  end

  def edit
  end

private 
  def book_params
  params.require(:book).permit(:title,:body)
  end
  
end
