class CreateExperience3s < ActiveRecord::Migration[6.1]
  def change
    create_table :experience3s do |t|
      t.string :job_title3
      t.string :employer3
      t.string :start_date3
      t.string :end_date3
      t.string :work_description3
      t.timestamps
    end
  end
end
