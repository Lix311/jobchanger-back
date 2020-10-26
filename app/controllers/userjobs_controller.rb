class UserjobsController < ApplicationController
    def index 
        userjobs = Userjob.all 
        render json: userjobs 
    end 

    def show
        userjob = Userjob.find(params[:id])
        render json: userjob
    end
    
    def create 
        userjob = Userjob.create(userjob_params)
        render json: userjob
        

        
    end 

    def update
        userjob = Userjob.find(params[:id])
        userjob.update(userjob_params)
        render json: userjob 
    end 

    def destroy
        userjob = Userjob.find(params[:id])
        userjob.destroy
        
        
    end 
    
    private 
    def userjob_params 
        params.require(:userjob).permit(:user_id, :job_id, :company, :title, :status, :next_step, :job_date, :job_time, :contact, :notes)
    end 
end
