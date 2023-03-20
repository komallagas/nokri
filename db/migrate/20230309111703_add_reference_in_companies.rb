class AddReferenceInCompanies < ActiveRecord::Migration[6.1]
  def change
    add_reference :companies, :user,index: true
  end
end
