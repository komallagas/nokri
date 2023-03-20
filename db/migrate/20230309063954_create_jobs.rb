class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :experience
      t.integer :opening
      t.text :location
      t.string :pakage

      t.timestamps
    end
  end
end
