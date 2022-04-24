class CreateQuiz1s < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz1s do |t|
      t.string :answer_1
      t.string :distractor_11
      t.string :distractor_21

      t.timestamps
    end
  end
end
