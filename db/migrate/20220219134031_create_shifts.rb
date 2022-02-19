class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :working_time

      t.timestamps
    end
  end
end
