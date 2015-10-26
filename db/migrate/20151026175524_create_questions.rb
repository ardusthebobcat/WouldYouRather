class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :answer_A
      t.string :picture_A
      t.integer :votes_A

      t.string :answer_B
      t.string :picture_B
      t.integer :votes_B

      t.integer :total

      t.timestamps null: false
    end
  end
end
