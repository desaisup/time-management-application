class AssignProject<ActiveRecord::Base
belongs_to :project
belongs_to :employee

private
  def assign_project_params
    params.require(:assign_project).permit(:id, :employee_id, :project_id, :from_date,:to_date,:created_at,:updated_at,:created_by,:updated_by,:duration)
  end
end

