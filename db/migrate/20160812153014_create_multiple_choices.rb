class CreateMultipleChoices < ActiveRecord::Migration
  def change
    create_table :multiple_choices do |t|
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.boolean :option_a_correct
      t.boolean :option_b_correct
      t.boolean :option_c_correct
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
