class CreateExperience5s < ActiveRecord::Migration[6.1]
  def change
    create_table :experience5s do |t|
      t.string :job_title5
      t.string :employer5
      t.string :start_date5
      t.string :end_date5
      t.string :work_description5
      t.timestamps
    end
  end
end
