class CreateQuestionCards < ActiveRecord::Migration[7.2]
  def change
    create_table :question_cards do |t|
      t.references :session, null: false, foreign_key: true
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
