class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author
  end

  def new
    @page_title = 'Add New Author'
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path
      flash[:notice] = 'Author Created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
end
