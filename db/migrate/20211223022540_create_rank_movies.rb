class CreateRankMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :rank_movies do |t|

      t.references  :rank, index:true, foreign_key: true
      t.references  :movies, index:true, foreign_key: true

      t.timestamps
    end
  end
end
