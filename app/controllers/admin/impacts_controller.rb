class Admin::ImpactsController < ApplicationController
    before_action :set_impact, only: %i[show  edit update destroy]

    def index
      @impacts = Impact.all
    end

    def new 
      @impact = Impact.new
    end

    def show
      @impact = Impact.find(params[:id])
    end

    def edit
      @impact = Impact.find(params[:id])
    end

    def create
       @impact = Impact.new(impact_params)

       if @impact.save
          redirect_to admin_home_index_path(@impact)
       else
          render :new, status: :unprocessable_entity
       end
    end

    def update
      if @impact.update(impact_params)
        redirect_to admin_home_index_path(@impact)
      else
        render :show, status: :unprocessable_entity
      end
    end

    private 

    def set_impact
      @impact = Impact.find(params[:id])
    end

    def impact_params
      params.require(:impact).permit(:mother, :children, :business, :workshop)
    end
end