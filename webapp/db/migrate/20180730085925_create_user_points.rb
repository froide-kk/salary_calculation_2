class CreateUserPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :user_points do |t|
      t.integer :index
      t.integer :user_info_id , foreign_key: true
      t.integer :master_additionalpoint_id , foreign_key: true
      t.integer :value
      t.string :reason

      t.timestamps
    end
  end
end
