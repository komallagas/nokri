class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :Qualication

      t.timestamps
    end
  end
end
