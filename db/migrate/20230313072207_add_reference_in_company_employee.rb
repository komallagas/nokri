class AddReferenceInCompanyEmployee < ActiveRecord::Migration[6.1]
  def change
    add_reference :company_employees, :user, index: true
    add_reference :company_employees, :job, index: true 
    add_reference :company_employees, :company, index: true  
  end
end
