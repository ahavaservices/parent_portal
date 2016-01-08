class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :dob
      t.string :grade
      t.integer :club_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
