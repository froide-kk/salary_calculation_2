class CreateUserPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :user_points do |t|
      t.integer :index
      t.integer :master_additionalpoint_id
      t.integer :value
      t.string :reason

      t.timestamps
    end
  end
end
