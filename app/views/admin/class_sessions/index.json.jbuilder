json.array!(@admin_class_sessions) do |admin_class_session|
  json.extract! admin_class_session, :id, :title, :start_date, :end_date
  json.url admin_class_session_url(admin_class_session, format: :json)
end
