class CreateMasterMetropolitions < ActiveRecord::Migration[5.1]
  def change
    create_table :master_metropolitions do |t|
      t.integer :index
      t.string :name
      t.integer :allowance

      t.timestamps
    end
  end
end
