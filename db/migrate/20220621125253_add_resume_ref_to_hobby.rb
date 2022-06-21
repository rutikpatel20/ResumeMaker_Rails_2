class AddResumeRefToHobby < ActiveRecord::Migration[6.1]
  def change
    add_reference :hobbies, :resume
  end
end
