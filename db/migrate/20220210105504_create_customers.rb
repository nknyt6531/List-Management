class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :last_name, null: false
      t.string :fast_name, null: false
      t.string :last_name_kana, null: false
      t.string :first_name_kana, null: false
      t.integer :gender_id, null: false, defalut: 0
      t.date :birthday, null: false
      t.integer :age, null: false
      t.string :post_code, null: false
      t.string :home_phone_number, null: false
      t.string :phone_number, null: false
      t.text :address, null: false

      t.timestamps
    end
  end
end
