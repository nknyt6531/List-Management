class RemoveFastNameFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :fast_name, :string
  end
end
