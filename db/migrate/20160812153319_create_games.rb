class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :nickname
      t.integer :score
      t.string :q1_correct
      t.string :q2_correct
      t.string :q3_correct
      t.string :q4_correct
      t.string :q5_correct

      t.timestamps null: false
    end
  end
end
