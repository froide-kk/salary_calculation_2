class CreateMetropolitans < ActiveRecord::Migration[5.1]
  def change
    create_table :metropolitans do |t|
      t.integer :index
      t.string :address
      t.integer :address_allowance

      t.timestamps
    end
  end
end
