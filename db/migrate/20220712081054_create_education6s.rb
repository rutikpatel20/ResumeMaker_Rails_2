class CreateEducation6s < ActiveRecord::Migration[6.1]
  def change
    create_table :education6s do |t|
      t.string :degree_title6
      t.string :study_organization_name6
      t.string :start_year6
      t.string :end_year6
      t.timestamps
    end
  end
end
