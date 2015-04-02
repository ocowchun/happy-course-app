class HomeController < ApplicationController

  def index
    @courses=Course.all
    query_params=[:name,:teacher,:time]
    query_params.each do |q|
      if params[q].present?
        @courses=@courses.where("#{q} like ?","%#{params[q]}%")
      end
    end
  end
end
