class StaticJobsController < ApplicationController
    def index 
        staticjobs = StaticJob.all 
        render json: staticjobs
    end 

    def show
        staticjob = StaticJob.find(params[:id])
        render json: staticjob
    end
    
    def create 
        staticjob = StaticJob.create(staticjob_params)
        render json: staticjob
        
    end 

    def update
        staticjob = StaticJob.find(params[:id])
        staticjob.update(staticjob_params)
        render json: staticjob 
    end 

    def destroy
        staticjob = StaticJob.find(params[:id])
        staticjob.destroy
        
        
    end 
    
    private 
    def staticjob_params 
        params.require(:staticjob).permit(:api_id, :company, :title, :logo, :description, :date)
    end 
end
