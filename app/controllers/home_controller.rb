class HomeController < ApplicationController

  def index
    @courses=Course.all
    if params[:name].present?
      @courses=@courses.where(name:params[:name])
    end
  end
end
