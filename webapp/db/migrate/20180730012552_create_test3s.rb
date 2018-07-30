class CreateTest3s < ActiveRecord::Migration[5.1]
  def change
    create_table :test3s do |t|
      t.string :name
      t.integer :test2s, foreign_key: true

      t.timestamps
    end
  end
end
