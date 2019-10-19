class StudentsController < ApplicationController

def index
    @students = Student.all
@groups = Group.all
  end

def show
    @student = Student.find(params[:id])
@groups = Group.all
@groupmembers = Groupmember.all
  end

def new
end

def create
  @student = Student.new(student_params)
 
  @student.save
  redirect_to @student
end
 
private
  def student_params
    params.require(:student).permit(:username)
  end
end
