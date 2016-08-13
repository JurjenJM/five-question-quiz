class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :nickname
      t.integer :q1_points
      t.integer :q2_points
      t.integer :q3_points
      t.integer :q4_points
      t.integer :q5_points
      t.integer :score

      t.timestamps null: false
    end
  end
end
