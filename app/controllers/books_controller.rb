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
    @book = Book.new(book_params)
    # flashhashとバリデーション記述
    if @book.save
      redirect_to book_path(@book), notice: 'Book was successfully created.'
    else
       @books = Book.all
      render :index
      #redirecttoで空になるindexに行っても@booksが空っぽなのでrenderの直前で定義する
    end

  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  def update
    @book = Book.find(params[:id])
     if @book.update(book_params)
      redirect_to book_path(@book), notice: 'Book was successfully updated.'
    else
      render :edit
      # こんどはeditにいくのでeditには@booksないから定義する必要はない
    end
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end
  end