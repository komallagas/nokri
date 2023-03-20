class AddReferenceToUserInCompany < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :job, index: true
  end
end
