class CompanyEmployee < ApplicationRecord
	belongs_to :user
	belongs_to :job 
	belongs_to :company
	belongs_to :apply
end
