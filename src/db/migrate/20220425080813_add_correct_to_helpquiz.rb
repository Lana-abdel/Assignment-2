class AddCorrectToHelpquiz < ActiveRecord::Migration[6.0]
  def change
    add_column :helpquizzes, :correct, :boolean, default: false
    add_column :helpquizzes, :points, :float, default: 0
    add_column :helpquizzes, :total_points, :float, default: 12
    add_column :helpquizzes, :correct_2, :boolean, default: false
    add_column :helpquizzes, :correct_3, :boolean, default: false
    add_column :helpquizzes, :correct_4, :boolean, default: false
    add_column :helpquizzes, :correct_5, :boolean, default: false
    add_column :helpquizzes, :correct_6, :boolean, default: false
  end
end
