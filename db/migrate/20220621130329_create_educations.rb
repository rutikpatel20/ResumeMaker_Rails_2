class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :degree_title
      t.string :study_organization_name
      t.timestamps
    end
  end
end
