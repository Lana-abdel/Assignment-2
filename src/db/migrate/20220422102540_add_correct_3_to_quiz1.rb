class AddCorrect3ToQuiz1 < ActiveRecord::Migration[6.0]
  def change
    add_column :quiz1s, :correct_3, :boolean, default: false
  end
end
