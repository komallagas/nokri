# class EducationsController < ApplicationController
# 	def index
# 		@user = User.find_by(id: params[:user_id])
# 		@educations = @user.educations.all 
# 		redirect_to user_path(@user)
# 	end

# 	def create
# 		@user = User.find_by(id: params[:user_id])
# 		@educations = @user.educations.create(education_params)
# 		redirect_to user_path(params[:user_id])
# 	end

# 	def edit
# 		@user = User.find_by(id: params[:user_id])
# 	end

# 	def update
# 		@user = User.find_by(id: params[:user_id])
# 		@educations = @user.educations.update(education_params)
# 		redirect_to user_path(params[:user_id])
# 	end

# 	private
# 	def education_params
# 		params.require(:education).permit(:Qualication)
# 	end

# end
