class CreateApplies < ActiveRecord::Migration[6.1]
  def change
    create_table :applies do |t|
      t.string :company_name
      t.text :designation

      t.timestamps
    end
  end
end
