class CreateMasterStandards < ActiveRecord::Migration[5.1]
  def change
    create_table :master_standards do |t|
      t.integer :index
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
