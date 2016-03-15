class JobsController < ApplicationController

  def index
    redirect_to find_jobs_path
  end


  def claimed_jobs
    @jobs = Job.all
  end

  def find_jobs
    @current_profile = Profile.find(current_user.id)

    @jobs = Job.all
    @new_job = Job.new

    @boat = Boat.all
    @new_boat = Boat.new
    @boats = Boat.where(user_id: @current_profile.id)
  end

  def show
    
  end
  
  def new
    @jobs = Job.all
    @new_job = Job.new
  end

  def create
    @jobs = Job.all
    @new_job = Job.new(job_params)
    
    if @new_job.save
      redirect_to find_jobs_path
      # render :find_jobs
    else
      render :find_jobs
    end
  end
  
  def edit
    @job = Job.find(params[:id])
  end
  
  def update
    @job = Job.find(params[:id])
    @job.update(job_params)

    if @job.save
      redirect_to profile_path(:id)
    else
      render :edit
    end
  end


  def assign_boat_name
    @job = Job.find(params[:id])
    @job.update(job_params)


    if @job.save
      redirect_to profile_path(current_user.id)
    else
      redirect_to find_jobs_path
    end

  end



  
  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    redirect_to :back
  end

  private
  def job_params
    params.require(:job).permit(:boat_id, :containers_needed, :cargo, :origin, :destination, :cost, :delivery_date, :title)
  end

end
