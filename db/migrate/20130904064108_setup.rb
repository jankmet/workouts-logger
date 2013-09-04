class Setup < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :workout_id
      t.string :name	
      t.timestamps
    end

    create_table :workout_items do |t|
      t.integer :workout_id
      t.integer :count
      t.integer :day
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end
end
