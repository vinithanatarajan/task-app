class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    # authorize :user
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
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: "Student was sucessfully added." }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      format.html { redirect_to students_url, notice: "Student was sucessfully updated" }
    else
      format.html { render action: "edit" }
    end
  end

  def destroy
    @student = student.find(params[:id])
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url }
    end
  end

  private

  def student_params
    params[:student].permit(:name, :class_room, :current_level)
  end
end
