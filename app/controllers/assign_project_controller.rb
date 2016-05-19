class AssignProjectController <ApplicationController

  def new
  	@assign_project=AssignProject.new
  end

  def create

      #if AssignProject.exists?(:employee_id => params[:assign_project][:employee_id])
        
        #puts "11111111111111111111"
         # flash[:success] = "Plz select different employee name"

         #render :action=>"new"
  	  #else
        #puts "22222222222222"
          @assign_project=AssignProject.create!(create_assign_params)
           @assign_project.save!
          redirect_to :action=>"show"
      #render :action=>"new"
    #end
  end
  def edit
  	@assign_project=AssignProject.find(params[:id])
  end
  
  def show 
  @assign_project=AssignProject.all
  end
  
  def update
  @assign_project=AssignProject.find(params[:id])
  @assign_project.update_attributes(update_params)
  redirect_to :action=>"show"
  end
  
  def delete
  	@assign_project=AssignProject.find(params[:id])
  	@assign_project.destroy
  	redirect_to :action=>"show"
  end

  
  private
  def create_assign_params
  params.require(:assign_project).permit(:id,:employee_id,:project_id,:created_at,:updated_at,:created_by,:updated_by,:from_date,:to_date,:duration)
  end
   def update_params
  params.require(:assign_project).permit(:id,:employee_id,:project_id,:created_at,:updated_at,:created_by,:updated_by,:from_date,:to_date,:duration)
  end
  end