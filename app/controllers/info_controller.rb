class InfoController < ApplicationController
  def marketing
    @recent_courses = Course.find(:all, :order => "id desc", :limit => 3)
  end

  def about
  end

end

