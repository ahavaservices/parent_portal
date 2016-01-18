json.array!(@admin_class_rooms) do |admin_class_room|
  json.extract! admin_class_room, :id, :class_no
  json.url admin_class_room_url(admin_class_room, format: :json)
end
