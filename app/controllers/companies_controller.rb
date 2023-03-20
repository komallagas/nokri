class CompaniesController < ApplicationController
	
	def index
		byebug
		user = User.find_by(id: params[:user_id])
		@companies = user.companies
	end

	def show
		byebug
		user = User.find_by(id: params[:user_id])
		@company = user.companies
	end

	def new
		# byebug
		# user = User.find(params[:user_id])
		@company = Company.new
	end

	def create
		 byebug
		@user = User.find(params[:user_id])
		@company = Company.new(company_params)
		@company.user = @user
		if @company.save
			byebug
			redirect_to user_company_path(params[:user_id],@company.id)
		else
			render :new
		end
	end

	# def destroy
	# 	@user = User.find(params[:user_id])
	# 	@company = @user.company
	# 	@company.destroy
	# 	redirect_to user_path(@user), status: :see_other
	# end

	def destroy
		@user = User.find(params[:company][:user_id])
		@company = @user.companies.find(params[:id])
		@company.destroy
		redirect_to user_path(@user), status: :see_other
	end


	private
	def company_params
		params.require(:company).permit(:company_name,:description,:location)
	end
end

