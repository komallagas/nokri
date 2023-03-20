class AddReferenceInUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :skill, index: true
  end
end
