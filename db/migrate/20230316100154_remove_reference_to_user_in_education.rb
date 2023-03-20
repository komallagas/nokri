class RemoveReferenceToUserInEducation < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :education
  end
end
