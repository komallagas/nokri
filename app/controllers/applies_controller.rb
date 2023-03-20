class AppliesController < ApplicationController
	def index
		user = User.find_by(id: params[:user_id])
		@applies = user.applies.all
	end
	
	def show
		user = User.find_by(id: params[:user_id])
		@apply = Apply.find(params[:id])
	end

	def new
		user = User.find(params[:user_id])
		@apply = Apply.new
	end

	# def create
	# 	byebug
	# 	@user = User.find(params[:user_id])
	# 	@apply = Apply.new(apply_params)
	# 	@apply.user = @user
	# 	if @apply.save
	# 		redirect_to  user_applies
	# 	else
	# 		render :new
	# 	end
	# end

	def create
		byebug
		@user = User.find_by(id: params[:user_id])
		@apply = @user.applies.create(apply_params)
		redirect_to user_applies_url
	end

	def destroy
		@user = User.find(params[:user_id])
		@apply = @user.apply
		@apply.destroy
		redirect_to user_path(@user), status: :see_other
	end


	private
	def apply_params
		params.require(:apply).permit(:company_name,:designation, :job_id,:user_id)
	end
end
