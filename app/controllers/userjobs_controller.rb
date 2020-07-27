class UserjobsController < ApplicationController
    def index 
        userjobs = Userjob.all 
        # render json: userjobs // change all to userjob
    end 

    def show
        job = Job.find(params[:id])
        render json: job
    end
    
    def create 
        job = Job.create(job_params)
        render json: job
        
    end 

    def update
        job = Job.find(params[:id])
        job.update(job_params)
        render json: job 
    end 

    def destroy
        job = Job.find(params[:id])
        job.destroy
        
        
    end 
    
    private 
    def job_params 
        params.require(:job).permit(:company, :location, :title, :logo, :description, :date)
    end 
end
