class AddColumnsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :employee_title, :text
    add_column :employees, :dob, :date
    


  end
end
