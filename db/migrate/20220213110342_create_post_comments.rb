class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.text :comment
      t.string :user_id
      t.string :integer
      t.integer :post_customer_id

      t.timestamps
    end
  end
end
