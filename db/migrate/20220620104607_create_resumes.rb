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
      t.string :expertise_1
      t.string :expertise_2
      t.string :expertise_3
      t.string :expertise_4
      t.string :degree_1
      t.string :college_1
      t.string :degree_2
      t.string :college_2
      t.string :hobby_1
      t.string :hobby_2
      t.string :hobby_3
      t.string :profile_summary
      t.string :pr_job_title_1
      t.string :pr_job_role_1
      t.string :pr_job_description_1
      t.string :pr_job_title_2
      t.string :pr_job_role_2
      t.string :pr_job_description_2
      t.string :pr_job_title_3
      t.string :pr_job_role_3
      t.string :pr_job_description_3

      t.timestamps
    end
  end
end
