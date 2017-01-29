class CoursesController < ApplicationController
  load_and_authorize_resource
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  
  def index
    @courses = Course.all
  end


  def show
  end

  
  def new
    @course = current_user.courses.build
  end

  
  def edit
  end

  
  def create
    @course = current_user.courses.build(course_params)
      if @course.save
        redirect_to @course, notice: "One course is created successfully"
      else
        render 'new' 
      end
    
  end

  
  def update
      if @course.update(course_params)
         redirect_to @course, notice: 'Course was successfully updated.' 
      end
  end

  
  def destroy
    if @course.destroy
      redirect_to courses_path, notice: 'Course was successfully destroyed.' 
    end
  end

  private
    
    def set_course
      @course = Course.find(params[:id])
    end

   def course_params
      params.require(:course).permit(:name)
    end
end
