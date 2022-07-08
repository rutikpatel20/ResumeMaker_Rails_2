class CreateExperience2s < ActiveRecord::Migration[6.1]
  def change
    create_table :experience2s do |t|
      t.string :job_title2
      t.string :employer2
      t.string :start_date2
      t.string :end_date2
      t.string :work_description2
      t.timestamps
    end
  end
end
