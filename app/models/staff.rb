class Staff < ActiveRecord::Base
	  has_one :address, :as => :addressable, dependent: :destroy, autosave: true
	  accepts_nested_attributes_for :address
end
