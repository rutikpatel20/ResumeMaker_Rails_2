class AddResume2RefToSkill2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :skill2s, :resume2
  end
end
