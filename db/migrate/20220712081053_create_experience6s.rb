class CreateExperience6s < ActiveRecord::Migration[6.1]
  def change
    create_table :experience6s do |t|
      t.string :job_title6
      t.string :employer6
      t.string :start_date6
      t.string :end_date6
      t.string :work_description6
      t.timestamps
    end
  end
end
