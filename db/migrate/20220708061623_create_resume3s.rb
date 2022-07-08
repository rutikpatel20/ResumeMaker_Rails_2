class CreateResume3s < ActiveRecord::Migration[6.1]
  def change
    create_table :resume3s do |t|
      t.string :name
      t.string :profile_pic
      t.string :current_role
      t.string :profile_summary
      t.string :contact_number
      t.string :email
      t.string :linkedin_username
      t.string :skill
      t.string :award
      t.string :experience
      t.string :education
      t.string :known_language
      t.timestamps
    end
  end
end
