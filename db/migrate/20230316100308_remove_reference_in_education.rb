class RemoveReferenceInEducation < ActiveRecord::Migration[6.1]
  def change
    add_reference :educations, :user, index:true
  end
end
