class AddResumeRefToEducation < ActiveRecord::Migration[6.1]
  def change
    add_reference :educations, :resume
  end
end
