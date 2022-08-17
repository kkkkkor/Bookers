class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all

  end

  def show
    @books = Book.find(params[:id])
  end

  def edit
  end


  def create
    book = Book.new(book_params)
    book.save
    # redirect_to'/top'
    redirect_to book_path(book.id)

  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
