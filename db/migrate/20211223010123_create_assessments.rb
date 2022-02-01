class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|

      t.text      :impression
      t.float     :rate
      t.text      :goodthings
      t.text      :badthings
      t.integer   :user_id

      t.timestamps
    end
  end
end
