class Task<ActiveRecord::Base
belongs_to :project
belongs_to :employee




private
def task_params
 params.require(:tasks).permit(:id,:task_date,:task_duration,:task_desc,:created_at,:updated_at,:created_by,:updated_by,:employee_id,:task_hour,:task_status,:project_id)

end
end