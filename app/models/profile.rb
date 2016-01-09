class Profile < ActiveRecord::Base
	belongs_to :user
	validates :first_name, presence: { :message => " cannot be blank" }
	validates :last_name, presence: { :message => " cannot be blank" }
	validates :phone, presence:true, :if => :perform_validation?
	validates :emergency_contact_name, presence:true, :if => :perform_validation?
	validates :emergency_contact_no, presence:true, :if => :perform_validation?

	def perform_validation?
		phone == "" || emergency_contact_name == "" || emergency_contact_no == ""
	end
end
