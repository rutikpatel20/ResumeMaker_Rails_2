class CreateResume2s < ActiveRecord::Migration[6.1]
  def change
    create_table :resume2s do |t|
      t.string :name
      t.string :profile_pic
      t.string :current_role
      t.string :profile_summary
      t.string :contact_number
      t.string :email
      t.string :linkedin_username
      t.timestamps
    end
  end
end
