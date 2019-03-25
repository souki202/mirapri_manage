class AddIsAdminToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :is_admin, :boolean, null: false, default: false
  end
end
