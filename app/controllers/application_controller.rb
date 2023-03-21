class ApplicationController < ActionController::Base
	before_action :devise_params, if: :devise_controller?

	before_action :authenticate_user!


	def devise_params
		devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirm, :full_name, :address, :mobile_no, :language, :user_type, skills_attributes: [:is, :skill_name], educations_attributes: [:is, :Qualication]])
	end

end
