class StudentsController < ApplicationController
    
    before_action :current_student, only: [:show, :edit, :update, :destroy]

    def index 
        @students = Student.all
    end

    def show 

    end 

    def new
        @student = Student.new 
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end 

    def edit 
        
    end 

    def update 
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private 
        def current_student
            @student = Student.find(params[:id])
        end 

        def student_params 
            params.require(:student).permit(:first_name, :last_name)
        end
end