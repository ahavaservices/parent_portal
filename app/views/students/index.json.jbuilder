json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :gender, :dob, :grade, :club_id, :user_id
  json.url student_url(student, format: :json)
end
