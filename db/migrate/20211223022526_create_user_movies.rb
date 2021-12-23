class CreateUserMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :user_movies do |t|

      t.references  :movie, index:true, foreign_key: true
      t.references  :user, index:true, foreign_key: true

      t.timestamps
    end
  end
end
