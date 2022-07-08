class CreateEducation2s < ActiveRecord::Migration[6.1]
  def change
    create_table :education2s do |t|
      t.string :degree_title2
      t.string :study_organization_name2
      t.string :start_year2
      t.string :end_year2
      t.timestamps
    end
  end
end
