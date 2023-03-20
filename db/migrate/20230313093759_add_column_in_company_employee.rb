class AddColumnInCompanyEmployee < ActiveRecord::Migration[6.1]
  def change
    add_column :company_employees, :description, :string
  end
end
