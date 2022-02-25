class AddListGroupToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :list_group, :date
  end
end
