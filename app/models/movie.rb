class Movie < ApplicationRecord

  has_many :ranks, through: :rank_movies
  has_many :rank_movies

  has_many :assessments

end
