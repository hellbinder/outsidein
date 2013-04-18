class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find(params[:id])
    @books = @library.books
  end

  def new
    @library = Library.new
  end

  def add_book
    @library = Library.find(params[:id])
    if request.put?
      book = Book.find(params[:book_id])
      @library.books << book
      redirect_to @library
    end
    
  end

  def create
    @library = Library.new(params[:library])
    if @library.save
      redirect_to @library
    end
  end
end
