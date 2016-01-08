class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :emergency_contact_name
      t.string :emergency_contact_no
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
