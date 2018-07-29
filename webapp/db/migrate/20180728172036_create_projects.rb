class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :user_info, foreign_key: true
      t.references :master_positions, foreign_key: true

      t.timestamps null: false
    end
  end
end
