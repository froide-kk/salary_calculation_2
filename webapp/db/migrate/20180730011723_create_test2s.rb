class CreateTest2s < ActiveRecord::Migration[5.1]
  def change
    create_table :test2s do |t|
      t.integer :age

      t.timestamps
    end
  end
end
