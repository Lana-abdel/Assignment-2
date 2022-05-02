class AddCorrectToLawquiz < ActiveRecord::Migration[6.0]
  def change
    add_column :lawquizzes, :correct, :boolean, default: false
    add_column :lawquizzes, :points, :float, default: 0
    add_column :lawquizzes, :total_points, :float, default: 12
  end
end
