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
    @book = Book.all
    @books= Book.new(books_params)
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
    @book= Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end

  

private 
  def books_params
  params. require(:book).permit(:title, :body)
  end
  
end
