class AddReferenceToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :skills, :user, index: true
  end
end
