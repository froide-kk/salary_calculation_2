class CreateMasterPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :master_positions do |t|
      t.string :name
      t.integer :index
      t.integer :function_allowance
      t.integer :duty_allowance
      t.integer :deemded_overtime
      t.integer :standard_age

      t.timestamps
    end
  end
end
