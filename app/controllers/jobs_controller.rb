class JobsController < ApplicationController
	def index
		user = User.find_by(id: params[:user_id])
		@jobs = user.jobs
	end

	def show
		byebug
		user = User.find_by(id: params[:user_id])
		@job = user.jobs
	end
	
	def new
		user = User.find(params[:user_id]).build_job
		@job = Job.new
	end 

	# def create
	# 	# user = User.find(params[:user_id])
	# 	@job = current_user.job.new(job_params)
	# 	@job.company_id = current_user.company.id#s.first
	# 	if @job.save
	# 		redirect_to user_job_path(current_user,@job)
	# 	else
	# 		redirect_to :new, status: :unprocessable_entity
	# 	end
	# end

	def create
		byebug
		 # @user = User.find(params[:user_id])                                                              
		@job = Job.new(job_params)
		@job.user_id = current_user.id
		@job.company_id = current_user.company.id
		#@job = current_user.company.jobs.build_job#.build
		@job = current_user.company.jobs.build(job_params)
    #@job.save

		if @job.save
			redirect_to user_jobs_path
		else
			# render json: {messages: @job.errors.full_messages}
			 render :new
		end
	end

	def destroy
		user = User.find(params[:user_id])
		@job = @user.jobs.find(params[:id])
		@job.destroy
		redirect_to user_path(@user), status: :see_other
	end

	private
	def job_params
		params.require(:job).permit(:job_name, :experience, :opening, :location, :pakage,:user_id ,:company_id)
	end
end
