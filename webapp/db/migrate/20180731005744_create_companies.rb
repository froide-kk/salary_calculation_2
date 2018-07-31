class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.integer :this_year
      t.integer :last_year

      t.timestamps
    end
  end
end
