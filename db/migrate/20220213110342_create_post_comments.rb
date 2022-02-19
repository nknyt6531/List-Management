class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.text :comment, null: false
      t.references :user, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.integer :method, null: false
      t.integer :target, null: false
      t.integer :status, null: false
      t.timestamps
    end
  end
end
