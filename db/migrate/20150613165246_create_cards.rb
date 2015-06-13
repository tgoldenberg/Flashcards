class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.text :answer, null: false
      t.string :image_url
      t.text :description, null: false
      t.integer :deck_id
      t.timestamps null: false
    end
  end
end
