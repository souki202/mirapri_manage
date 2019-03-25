class ColorantColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colorant_colors do |t|
      t.string :name, unique: true, null: false
      t.integer :color_group, null: false
    end
  end
end
