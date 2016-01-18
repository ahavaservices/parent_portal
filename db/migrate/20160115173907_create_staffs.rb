class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.datetime :hire_date
      t.datetime :release_date
      t.integer :user_id
      t.integer :phone_no1
      t.integer :phone_no2
      t.integer :address_id
      t.string :status

      t.timestamps null: false
    end
  end
end
