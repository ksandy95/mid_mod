class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @author ||= Author.find(params[:id])
    @books = @author.books
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(local_params)
    @author.save
    redirect_to author_path(@author.id)
  end


  private

  def local_params
    params.permit(:name)
  end

end
