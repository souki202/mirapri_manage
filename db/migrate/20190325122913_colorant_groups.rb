class ColorantGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :colorant_groups do |t|
      t.string :name, unique: true, null: false
    end
  end
end
