class CreateSaveInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :save_infos do |t|
      t.integer :user_info_id
      t.integer :index
      t.integer :year
      t.integer :month
      t.integer :basic_age
      t.integer :functional_level
      t.integer :normal_working_hour_allowance
      t.integer :metropolitan_allowance
      t.integer :basic_pay
      t.integer :hourly_wage
      t.integer :extra_work_hourly_wage
      t.integer :extra_work_time
      t.integer :overtime_pay
      t.integer :family_allowance
      t.integer :face_wage
      t.integer :difference
      t.integer :promotion_rate
      t.integer :hourly_difference
      t.integer :ratio

      t.timestamps
    end
  end
end
