class AddReferenceInApply < ActiveRecord::Migration[6.1]
  def change
      add_reference :applies, :user, index: true
      add_reference :applies, :job, index: true
  end
end
