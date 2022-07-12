class CreateExperience4s < ActiveRecord::Migration[6.1]
  def change
    create_table :experience4s do |t|
      t.string :job_title4
      t.string :employer4
      t.string :start_date4
      t.string :end_date4
      t.string :work_description4
      t.timestamps
    end
  end
end
