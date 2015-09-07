class CreateTblJobs < ActiveRecord::Migration
  def change
    create_table :tbl_jobs do |t|
      t.string :url
      t.text :html

      t.timestamps null: false
    end
  end
end
