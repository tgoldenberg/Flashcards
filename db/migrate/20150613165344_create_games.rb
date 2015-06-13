class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :deck, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :right
      t.integer :wrong
      t.integer :card_idx
      t.timestamps null: false
    end
  end
end
