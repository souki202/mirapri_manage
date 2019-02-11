class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :user_id, unique: true, null: false
      t.string :email, unique: true, null: false
      t.string :password, null: false

      t.timestamps
    end
  end
end
