class CreateTest4s < ActiveRecord::Migration[5.1]
  def change
    create_table :test4s do |t|
      t.string :name
      t.integer :test2_id, foreign_key: true

      t.timestamps
    end
  end
end
