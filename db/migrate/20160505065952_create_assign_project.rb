class CreateAssignProject < ActiveRecord::Migration
  def change
    create_table :assign_projects do |t|
    	t.integer :employee_id
    	t.integer :project_id
    	t.date    :from_date
    	t.date    :to_date
    	t.string  :duration
    	t.timestamps
    end
  end
end
