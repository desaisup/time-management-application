class Employee < ActiveRecord::Base
#attr_accessor :mbl_number

belongs_to :user 
has_many  :tasks
has_many  :assign_projects
has_many  :projects, :through=>:assign_projects,:dependent => :destroy
 
#validates :mbl_number, presence: true


#accepts_nested_attributes_for :assign_projects, allow_destroy: true

public 
def employee_params
 params.require(:employee).permit(:id,:emp_name,:position,:mbl_number,:email_id,:created_at,:updated_at,:created_by,:updated_by,:user_id,:emp_id)
end
  
end

