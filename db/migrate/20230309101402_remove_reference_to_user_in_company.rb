class RemoveReferenceToUserInCompany < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :job, index: true
  end
end
