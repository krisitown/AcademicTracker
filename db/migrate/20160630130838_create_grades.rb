class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.float :value
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
