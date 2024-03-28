class AuthorsController < ApplicationController
  def index
    Author.multi_db
  end

  def show
    @author = Author.find(params[:id])
  end
end
