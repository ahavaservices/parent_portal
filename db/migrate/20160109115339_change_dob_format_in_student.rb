class ChangeDobFormatInStudent < ActiveRecord::Migration
 def up
    change_column :students, :dob, :date
  end

  def down
    change_column :students, :dob, :string
  end
end
