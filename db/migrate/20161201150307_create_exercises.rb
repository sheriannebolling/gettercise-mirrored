class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :description, :null => false
      t.datetime :date, :null => false
      t.references :user
      t.timestamps(null: false)
    end
  end
end
