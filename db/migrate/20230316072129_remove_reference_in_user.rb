class RemoveReferenceInUser < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :skill 
  end
end
