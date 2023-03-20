class AddColumnInJob < ActiveRecord::Migration[6.1]
  def change
     add_column :jobs, :job_name, :string
  end
end
