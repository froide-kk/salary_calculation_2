json.extract! user_info, :id, :master_position_id, :master_job_id, :index, :name, :birth, :age, :ageP, :age_adjustment, :insurance, :address, :partner_num, :family_num, :shorter_working_hour_ch, :Secondhalf_salary, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)
