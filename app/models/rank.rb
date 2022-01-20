class Rank < ApplicationRecord

  has_many :movies, through: :rank_movies
  has_many :rank_movies

  belongs_to :users
end
