class AddAnswer2ToQuiz1 < ActiveRecord::Migration[6.0]
  def change
    add_column :quiz1s, :answer_2, :string
  end
end
