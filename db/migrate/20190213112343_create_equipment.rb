class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :place
      t.integer :level
      t.integer :item_level
      t.integer :race
      t.integer :sex

      t.timestamps
    end
  end
end
