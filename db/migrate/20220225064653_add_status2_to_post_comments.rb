class AddStatus2ToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :status2, :integer
  end
end
