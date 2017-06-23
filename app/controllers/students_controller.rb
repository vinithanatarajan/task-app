class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    # binding.pry
    @student = Student.create(student_params)

    if @student.save
      redirect_to @student, notice: "Student was sucessfully added."
    else
      render action: "new"
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to students_path, notice: "Student was sucessfully updated"
    else
      render action: "edit"
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private

  def student_params
    params[:student].permit(:name, :class_room, :current_level)
  end
end
