class CreateEducation3s < ActiveRecord::Migration[6.1]
  def change
    create_table :education3s do |t|
      t.string :degree_title3
      t.string :study_organization_name3
      t.string :start_year3
      t.string :end_year3
      t.timestamps
    end
  end
end
