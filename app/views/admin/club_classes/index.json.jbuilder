json.array!(@club_classes) do |club_class|
  json.extract! club_class, :id, :name, :min_age, :max_age, :max_students, :status, :program_id, :level_id, :staff_id
  json.url club_class_url(club_class, format: :json)
end
