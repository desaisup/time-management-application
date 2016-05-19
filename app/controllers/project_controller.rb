class ProjectController < ApplicationController

def index 
end
def new
@project = Project.new
end

def create
	@project = Project.create!(create_project_params)
  puts "+++++++++"
  puts @project
	if @project.save
		 redirect_to :action=>"show"
	else 
		 render :action=>"new"
	end
end

def show
    @project = Project.all 	
end

def update 
  @project = Project.find(params[:id])
 	@project.update_attributes(update_project_params)
 	redirect_to :action=>"show",:id=>@project
end

 def edit_project
 	 @project =Project.find(params[:id])
 end

def delete
    @project = Project.find(params[:id])
    @project.destroy
	redirect_to :action=>"show",:id=>@project
end


def team_lead_details
  project = Project.find(params[:id])
   employee=project.employees

  #@assign_projects = project.assign_projects
    #if assign_projects.present?
    if employee.present?

    #puts "ggggggggggggggggggg"
    #assign_project = project.assign_projects.first
    #assign_project_id = assign_project
     
     @emp = employee
    end
     #puts "bbbbbbb"
     #puts @emp.count 
 
 # end
end 

def delete_employee
assn = AssignProject.find(params[:id])
project=assn.project
#@emp=project.employees

#emp=assn.employee
puts "+++++++"
puts "---------------"
assn.destroy
#@emp.destroy
redirect_to :action=>"team_lead_details",:id=>project.id



  
end

private

def create_project_params
    params.require(:project).permit(:id,:project_name,:location,:project_lead,:team_lead,:total_team,:desc_project,:created_at,:updated_at,:created_by,:updated_by,:duration,:from_date,:to_date)

end

  
  def update_project_params
    params.require(:project).permit(:id,:project_name,:location,:project_lead,:team_lead,:total_team,:desc_project,:created_at,:updated_at,:created_by,:updated_by,:duration,:from_date,:to_date)
  end

end