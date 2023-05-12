class HomeController < ApplicationController
  def index
    @blogs = Blog.all
    @impacts = Impact.all
    @testimonies = Testimony.all
  end
end
