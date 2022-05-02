class AddCorrect2ToStatsquiz < ActiveRecord::Migration[6.0]
  def change
    add_column :statsquizzes, :correct_2, :boolean, default: false
    add_column :statsquizzes, :correct_3, :boolean, default: false
    add_column :statsquizzes, :correct_4, :boolean, default: false
    add_column :statsquizzes, :correct_5, :boolean, default: false
    add_column :statsquizzes, :correct_6, :boolean, default: false
  end
end
