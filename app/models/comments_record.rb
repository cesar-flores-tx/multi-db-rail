# frozen_string_literal: true

class CommentsRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :comments }
end
