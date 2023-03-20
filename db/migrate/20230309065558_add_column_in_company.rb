class AddColumnInCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :description, :string
    add_column :companies, :location, :text
  end
end
