class AddCorrect2ToQuiz1 < ActiveRecord::Migration[6.0]
  def change
    add_column :quiz1s, :correct_2, :boolean, default: false
  end
end
