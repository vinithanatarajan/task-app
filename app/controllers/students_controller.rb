class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    # user can view students if user created that student
    # if admin can see students

    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    authorize_user!
    @student = Student.new
  end

  def edit
    authorize_user!
    @student = Student.find(params[:id])
  end

  def create
    authorize_user!
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
    authorize_user!
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private

  def authorize_user!
    raise Pundit::NotAuthorizedError if current_user.admin?
  end

  def student_params
    params[:student].permit(:name, :class_room, :current_level)
  end
end
