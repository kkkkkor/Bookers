class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all

  end

  def show
    @book = Book.find(params[:id])
  # if @books.save
  #   flash[:notice]='Book was successfully created.'
  #   redirect_to action: :update
  # end
  end

  def edit
    @book = Book.find(params[:id])
    # @book = Update_books.find(params[:id])
  end


  def create
    book = Book.new(book_params)
    # flashhashの記述
    if book.save
      redirect_to book_path(book), notice: 'Book was successful created.'
    else
      render :index
    end
    # バリデーション
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :new
    end


  end

  def destroy
    list = Book.find(params[:id])
    list.destroy
    redirect_to '/books'
  end

  def update
    book = Book.find(params[:id])
    # book.update(book_params)
    # redirect_to book_path(book.id)
    if book.save
      redirect_to book_path(book), notice: 'Book was successfully updated.'
    else
      render :index
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end
  end