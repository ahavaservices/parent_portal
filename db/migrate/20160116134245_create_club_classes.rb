class CreateClubClasses < ActiveRecord::Migration
  def change
    create_table :club_classes do |t|
      t.string :name
      t.integer :min_age
      t.integer :max_age
      t.integer :max_students
      t.string :status
      t.integer :program_id
      t.integer :level_id
      t.integer :staff_id

      t.timestamps null: false
    end
  end
end
