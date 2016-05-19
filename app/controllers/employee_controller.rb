class EmployeeController <ApplicationController
def new
	puts "hello"
  @employee=Employee.new

end

def create     
	puts "nnnnnnnnnnn"    
	 puts create_employee_data.inspect
puts "nnnnnnnnnnnnn"  
@employee = Employee.create!(create_employee_data)  
if @employee.save     
redirect_to :action=>"show"
 else     
 	render :action=>"new"
end

end

def edit
 @employee= Employee.find(params[:id])
end

def update
	@employee = Employee.find(params[:id])
	@employee.update_attributes(update_employee_data)
	redirect_to :action=>"show"
end

def show 
	@employee = Employee.all  
end

def delete
 @employee = Employee.find(params[:id])
 puts "#{@employee.inspect} +dfgsdfhgfgjhghjh "
 @employee.destroy
 redirect_to :action=>"show"
end

private 
def create_employee_data
	params.require(:employee).permit(:id,:emp_name,:position,:mbl_number,:created_at,:updated_at,:created_by,:updated_by,:user_id,:emp_id)
end
def update_employee_data
	params.require(:employee).permit(:id,:emp_name,:position,:mbl_number,:created_at,:updated_at,:created_by,:updated_by,:user_id,:emp_id)
end
end