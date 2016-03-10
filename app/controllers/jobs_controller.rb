class JobsController < ApplicationController

  def index
  end

  def show
   
  end
  
  def new
  end

  def create
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
