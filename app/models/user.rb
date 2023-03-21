class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :full_name, presence: true
 
  has_many :companies
  has_one :user_job , class_name: "company_employee"  ,foreign_key: :user_id
  has_many :applies 
  has_many :jobs, through: :applies
  has_many :skills
  accepts_nested_attributes_for :skills
  has_many :educations
  accepts_nested_attributes_for :educations
end
