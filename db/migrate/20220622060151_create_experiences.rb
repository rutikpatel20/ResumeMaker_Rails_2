class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :job_title
      t.string :employer
      t.string :start_date
      t.string :end_date
      t.string :job_description

      t.timestamps
    end
  end
end
