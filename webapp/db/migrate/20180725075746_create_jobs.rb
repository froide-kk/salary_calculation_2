class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :index
      t.integer :allowances
      t.string :name

      t.timestamps
    end
  end
end
