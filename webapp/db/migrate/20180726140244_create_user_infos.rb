class CreateUserInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_infos do |t|
      t.integer :master_position_id, foreign_key: ture
      t.integer :master_job_id, foreign_key: ture
      t.integer :index
      t.string :name
      t.integer :birth
      t.integer :age
      t.integer :ageP
      t.integer :age_adjustment
      t.integer :insurance
      t.string :address
      t.integer :partner_num
      t.integer :family_num
      t.integer :shorter_working_hour_ch
      t.integer :Secondhalf_salary

      t.timestamps null :false
    end
  end
end
