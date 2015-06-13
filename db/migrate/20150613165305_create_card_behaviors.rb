class CreateCardBehaviors < ActiveRecord::Migration
  def change
    create_table :card_behaviors do |t|
      t.text :name, null: false
      t.timestamps null: false
    end
  end
end
