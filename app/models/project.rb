class Project<ActiveRecord::Base
has_many  :tasks
has_many  :assign_projects
has_many  :employees, :through=>:assign_projects,:dependent => :destroy



private
def create_project_params
 params.require(:project).permit(:id,:project_name,:location,:project_lead,:team_lead,:total_team,:desc_project,:created_at,:updated_at,:created_by,:updated_by)

end

end