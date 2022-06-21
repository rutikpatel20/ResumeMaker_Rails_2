class AddResumeRefToExpertise < ActiveRecord::Migration[6.1]
  def change
    add_reference :expertises, :resume
  end
end
