class CreateExpertises < ActiveRecord::Migration[6.1]
  def change
    create_table :expertises do |t|
      t.string :expertise
      t.timestamps
    end
  end
end
