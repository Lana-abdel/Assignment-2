class CreateHelpquizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :helpquizzes do |t|
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.string :answer_4
      t.string :answer_5
      t.string :answer_6
      t.string :answer_7

      t.timestamps
    end
  end
end
