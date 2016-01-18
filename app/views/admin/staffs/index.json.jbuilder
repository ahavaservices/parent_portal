json.array!(@staffs) do |staff|
  json.extract! staff, :id, :first_name, :last_name, :title, :hire_date, :release_date, :user_id, :phone_no1, :phone_no2, :address_id, :status
  json.url staff_url(staff, format: :json)
end
