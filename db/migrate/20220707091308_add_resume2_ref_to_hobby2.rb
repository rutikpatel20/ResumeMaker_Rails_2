class AddResume2RefToHobby2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :hobby2s, :resume2
  end
end
