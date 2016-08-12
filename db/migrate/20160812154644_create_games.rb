class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :nickname
      t.integer :score
      t.boolean :q1_correct
      t.boolean :q2_correct
      t.boolean :q3_correct
      t.boolean :q4_correct
      t.boolean :q5_correct

      t.timestamps null: false
    end
  end
end
