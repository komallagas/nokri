class AddReferenceToCompany < ActiveRecord::Migration[6.1]
  def change
    add_reference :jobs, :company, index: true
  end
end
