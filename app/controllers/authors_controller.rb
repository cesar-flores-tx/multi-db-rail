class AuthorsController < ApplicationController
  def index
    # This requires connected_to definition on AuthorsRecord
    @authors = Author.all
    @articles = Article.all
    puts ">>> articles: #{@articles.inspect}"

    ActiveRecord::Base.establish_connection(:comments)
    result = ActiveRecord::Base.connection.execute("SELECT * FROM comments")
    ActiveRecord::Base.establish_connection
    puts ">>> result comments: #{result.inspect}"

    ActiveRecord::Base.establish_connection(:authors)
    result = ActiveRecord::Base.connection.execute("SELECT * FROM authors")
    ActiveRecord::Base.establish_connection
    puts ">>> result authors: #{result.inspect}"

    ActiveRecord::Base.establish_connection(:primary)
    result = ActiveRecord::Base.connection.execute("SELECT * FROM articles")
    ActiveRecord::Base.establish_connection
    puts ">>> result articles: #{result.inspect}"
  end

  def show
    @author = Author.find(params[:id])
  end
end
