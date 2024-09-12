class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(books_params)
    if book.save
    redirect_to book_path(book)
    else
    render new_book_path
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
  end

  def edit
  end

private 
def book_params
  params.require(:book).permit(:title,:body)
end
end
end
