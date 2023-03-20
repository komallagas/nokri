class AddReferenceToUserInEducation < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :education, index:true
  end
end
