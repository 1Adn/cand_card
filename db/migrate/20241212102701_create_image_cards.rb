class CreateImageCards < ActiveRecord::Migration[7.2]
  def change
    create_table :image_cards do |t|
      t.references :session, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
