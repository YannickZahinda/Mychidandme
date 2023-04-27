class Admin::TestimoniesController < ApplicationController
    before_action :set_testimony, only: %i[show edit update destroy]
    
    def index
      @testimonies = Testimony.all
    end

    def new
      @testimony = Testimony.new
    end

    def edit 
      @testimony = Testimony.find(params[:id])
    end

    def show
      @testimony = Testimony.find(params[:id])
    end

    def create
      @testimony = Testimony.new(testimony_params)

      if @testimony.save
        redirect_to admin_testimonies_path
      else 
        render :new
      end 
    end

    def update
      if @testimony.update(testimony_params)
        redirect_to admin_testimonies_path(@testimony)
      else 
        render :show, status: :unprocessable_entity
      end
    end

    def destroy
      if @testimony.destroy 
        redirect_to admin_testimonies_path
      end
    end

    private

    def set_testimony
      @testimony = Testimony.find(params[:id])
    end

    def testimony_params
      params.require(:testimony).permit(:image, :title, :body)
    end
end