class CreateMasterJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :master_jobs do |t|
      t.integer :index
      t.string :name
      t.integer :allowance

      t.timestamps
    end
  end
end
