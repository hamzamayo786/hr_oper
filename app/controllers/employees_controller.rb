class EmployeesController < ApplicationController

    before_action :set_employee, only: [:edit, :update, :show, :destroy] 
    
    def index

        @employees = Employee.all 
        
    end

    def new
        @employee = Employee.new 
    end

    def create
        @employee =Employee.new(employee_params)
        if @employee.save
            redirect_to employees_path , notice: 'employee Has been created successfully'
        else
            render :new
        end
    end

    def edit 
    end

    def update
        if @employee.update(employee_params)
            redirect_to employees_path , notice: 'employee Has been Updated successfully'
        else
            render :edit
        end
    end

    def show 
    
    end

    def destroy
        if @employee.destroy
            redirect_to employees_path , notice: 'employee Has been Deleted successfully'
       
        end 
    end

    private
    def employee_params
        params.require(:employee).permit(:f_name, :l_name, :email, :age,
        :contact, :city, :country, :address)
    end

    def set_employee
        @employee =Employee.find(params[:id])

    rescue ActiveRecord::RecordNotFound => error
        redirect_to employees_path, notice: error 
    end

end
