class AddPointsToQuiz1 < ActiveRecord::Migration[6.0]
  def change
    add_column :quiz1s, :points, :integer, default: 0 
    add_column :quiz1s, :total_points, :integer, default: 10
  end
end
