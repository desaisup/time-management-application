class TaskController < ApplicationController
 
  def index
  end
  
  def new
   @task=Task.new
  end


  def create
   @task=Task.create!(create_task_params)
    if @task.save
      redirect_to :action=>"show"
    end
  end 

  def edit
  	@task=Task.find(params[:id])
  end

  def update 
  @task=Task.find(params[:id])
  @task.update_attributes!(update_task)
  redirect_to :action=>"show",:id=>@task
  end 
  
  def show 
  	@task=Task.all
    
  end

  def delete
    @task=Task.find(params[:id])
    @task.destroy
    redirect_to :action=>"show"
  end

private
 def create_task_params 
 	params.require(:task).permit(:id,:task_date,:task_duration,:task_desc,:created_at,:updated_at,:created_by,:updated_by,:employee_id,:task_hour,:task_status,:project_id)
 end

  def update_task 
  params.require(:task).permit(:id,:task_date,:task_duration,:task_desc,:created_at,:updated_at,:created_by,:updated_by,:employee_id,:task_hour,:task_status,:project_id)
 end

end