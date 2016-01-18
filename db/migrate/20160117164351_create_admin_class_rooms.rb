class CreateAdminClassRooms < ActiveRecord::Migration
  def change
    create_table :admin_class_rooms do |t|
      t.string :class_no

      t.timestamps null: false
    end
  end
end
