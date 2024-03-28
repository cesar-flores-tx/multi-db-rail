class Author < AuthorsRecord
  def self.multi_db
    ActiveRecord::Base.connected_to_many(AuthorsRecord, CommentsRecord, role: :writing) do
      puts ">>> #{Article.all.inspect}"
      puts ">>> #{Author.all.inspect}"
    end
  end
end
