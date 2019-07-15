class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book ||= Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(local_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  private

  def local_params
    params.permit(:title, :pages, :publication_year)
  end

end
