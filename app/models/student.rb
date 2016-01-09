class Student < ActiveRecord::Base
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence:true
  validates :gender, presence:true
  validates :dob, presence:true
  validates :grade, presence:true
end
