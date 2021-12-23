class CreateRanks < ActiveRecord::Migration[6.0]
  def change
    create_table :ranks do |t|

      t.text      :rank

      t.timestamps
    end
  end
end
