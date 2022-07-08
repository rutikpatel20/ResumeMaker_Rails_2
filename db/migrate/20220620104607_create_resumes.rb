class CreateResumes < ActiveRecord::Migration[6.1]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :profile_pic
      t.string :current_role
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :email
      t.string :social_media_1
      t.string :social_media_2
      t.string :social_media_3
      t.string :profile_summary

      t.timestamps
    end
  end
end
