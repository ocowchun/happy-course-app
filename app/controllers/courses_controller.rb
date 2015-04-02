class CoursesController < ApplicationController
  before_action :find_course,only:[:edit,:update]
  def new
    @course=Course.new
  end

  def create
    @course=Course.new(course_params)
    if @course.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

  def course_params
    params.require(:course).permit(:name,:teacher,:classroom,:time,:credit)
  end

  def find_course
    @course=Course.find(params[:id])
  end

end
