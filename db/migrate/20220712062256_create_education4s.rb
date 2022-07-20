class CreateEducation4s < ActiveRecord::Migration[6.1]
  def change
    create_table :education4s do |t|
      t.string :degree_title4
      t.string :study_organization_name4
      t.string :start_year4
      t.string :end_year4
      t.timestamps
    end
  end
end
