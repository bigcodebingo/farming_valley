class LandsController < ApplicationController
    def index
      @lands = Land.all
    end
    
    def edit
      @land = Land.find(params[:id])
    end

    def show
      @land = Land.find(params[:id])
    end
  
    def new
      @land = Land.new
    end
    
    def update
      @land = Land.find(params[:id])
      if @land.update(land_params)
        redirect_to land_path(@land), notice: 'Land successfully updated!'
      else
        render :edit
      end
    end

    def create
      @land = Land.new(land_params)
      if @land.save
        redirect_to lands_path, notice: 'Land successfully created!'
      else
        render :new
      end
    end
    
    def destroy
      @land = Land.find(params[:id])
      @land.destroy
      redirect_to lands_path, notice: 'Land was successfully deleted.'
    end
    
    private
  
    def land_params
      params.require(:land).permit(:landid, :agronomistid, :square, :status, :type_of_plant, :watering)
    end
  end