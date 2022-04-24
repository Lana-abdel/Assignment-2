class AddCorrectToStatsquiz < ActiveRecord::Migration[6.0]
  def change
    add_column :statsquizzes, :correct, :boolean,  default: false
    add_column :statsquizzes, :points, :float, default: 0
    add_column :statsquizzes, :total_points, :float, default: 12
  end
end
