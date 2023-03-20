class Job < ApplicationRecord
	belongs_to :company
	# belongs_to :user
	#has_many :company_employees
	has_many :applies
	has_many :users ,through: :applies
end