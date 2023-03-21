# class SkillsController < ApplicationController
	# def index
	# 	@user = User.find_by(id: params[:user_id])
	# 	@skills = @user.skills.all 
	# 	redirect_to user_path(@user)
	# end

	# def create
	# 	@user = User.find_by(id: params[:user_id])
	# 	@skill = @user.skills.create(skill_params)
	# 	redirect_to user_path(params[:user_id])
	# end

	# def update
	# 	@user = User.find_by(id: params[:user_id])
	# 	@skills = @user.skills.update(skill_params)
	# 	redirect_to user_path(params[:user_id])
	# end


	# def destroy
	# 	byebug
	# 	@user = User.find(params[:user_id])
	# 	@skill = @user.skills.find(params[:id])
	# 	@skill.destroy
	# 	redirect_to user_path(params[:user_id])
	# end


	# private
	# def skill_params
	# 	params.require(:skill).permit(:skill_name)
	# end

# end



