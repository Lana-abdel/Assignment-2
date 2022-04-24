class AddCorrect1ToQuiz1 < ActiveRecord::Migration[6.0]
  def change
    add_column :quiz1s, :correct_1, :boolean, default: false
  end
end
