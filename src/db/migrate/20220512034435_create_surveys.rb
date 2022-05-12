class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.string :answer_4

      t.timestamps
    end
  end
end
