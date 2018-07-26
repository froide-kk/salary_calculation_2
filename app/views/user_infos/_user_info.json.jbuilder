json.extract! user_info, :id, :position-id, :job-id, :index, :name, :birth, :age, :ageP, :age-adjustment, :insurance, :address, :partner-num, :family-num, :shorter-working-hour-ch, :Secondhalf-salary, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)
