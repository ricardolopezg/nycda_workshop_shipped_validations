class JobsController < ApplicationController

  def index
    @jobs = Job.all
    @new_job = Job.new
  end

  def show
   
  end 
  
  def new
    @jobs = Job.all
    @new_job = Job.new
  end

  def create
    @new_job = Job.new(job_params)
    
    if @new_job.save
      # redirect_to profile_path(:id)
      render :index
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
