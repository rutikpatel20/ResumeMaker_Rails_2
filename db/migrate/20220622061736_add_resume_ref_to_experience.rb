class AddResumeRefToExperience < ActiveRecord::Migration[6.1]
  def change
    add_reference :experiences, :resume
  end
end
