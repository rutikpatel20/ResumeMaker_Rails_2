class CreateEducation5s < ActiveRecord::Migration[6.1]
  def change
    create_table :education5s do |t|
      t.string :degree_title5
      t.string :study_organization_name5
      t.string :start_year5
      t.string :end_year5
      t.timestamps
    end
  end
end
