class Bookmark < ApplicationRecord

  validates :movie_id, :uniqueness => {:scope => :user_id, :message => "has already been taken"}


  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")

  belongs_to(:movie, :class_name => "Movie", :foreign_key => "movie_id")
end
