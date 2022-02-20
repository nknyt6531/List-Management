class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.references :user, null: false, foreign_key: true
      t.date :time, null: false
      t.integer :working_time, null: false
      t.date :start, null: false
      t.date :finish, null: false
      t.timestamps
    end
  end
end
