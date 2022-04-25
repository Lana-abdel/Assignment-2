class AddCorrect22ToLawquiz < ActiveRecord::Migration[6.0]
  def change
    add_column :lawquizzes, :correct_22, :boolean, default: false 
    add_column :lawquizzes, :correct_32, :boolean, default: false 
    add_column :lawquizzes, :correct_42, :boolean, default: false 
    add_column :lawquizzes, :correct_52, :boolean, default: false 
    add_column :lawquizzes, :correct_62, :boolean, default: false 
  end
end
