class CreateCompanyEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :company_employees do |t|

      t.timestamps
    end
  end
end
