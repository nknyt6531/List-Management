class CreateUserCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_customers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
