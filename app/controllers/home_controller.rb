class HomeController < ApplicationController
  def index
    @blogs = Blog.all
    @impacts = Impact.all
    @testimonials = Testimony.all
  end
end
