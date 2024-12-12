class CreateSessions < ActiveRecord::Migration[7.2]
  def change
    create_table :sessions do |t|
      t.string :name
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
