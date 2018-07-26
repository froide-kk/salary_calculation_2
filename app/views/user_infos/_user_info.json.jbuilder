json.extract! user_info, :id, :index, :name, :birth, :age, :insurance, :job_id, :address, :wife, :family, :position_id, :family_allowance_id, :metropolitan_allowance_id, :standard_id, :salary_id, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)
