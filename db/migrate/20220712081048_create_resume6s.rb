class CreateResume6s < ActiveRecord::Migration[6.1]
  def change
    create_table :resume6s do |t|
      t.string :name
      t.string :current_role
      t.string :profile_summary
      t.string :contact_number
      t.string :email
      t.string :linkedin_username
      t.timestamps
    end
  end
end
