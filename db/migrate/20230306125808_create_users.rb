class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.text :address
      t.integer :mobile_no
      t.string :email
      t.string :language
      t.string :user_type

      t.timestamps
    end
  end
end
