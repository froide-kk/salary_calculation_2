class CreateUserInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_infos do |t|
      t.integer :index
      t.string :name
      t.string :birth
      t.integer :age
      t.integer :insurance
      t.integer :job_id
      t.string :address
      t.integer :wife
      t.integer :family
      t.integer :position_id
      t.integer :family_allowance_id
      t.string :metropolitan_allowance_id
      t.integer :standard_id
      t.integer :salary_id

      t.timestamps
    end
  end
end
