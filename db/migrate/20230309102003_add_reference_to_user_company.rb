class AddReferenceToUserCompany < ActiveRecord::Migration[6.1]
  def change
    add_reference :jobs, :user, index: true
  end
end
