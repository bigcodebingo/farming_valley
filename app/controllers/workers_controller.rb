class WorkersController < ApplicationController
    def index
      @workers = Worker.all
    end
  
    def show
      @worker = Worker.find(params[:id])
    end
  
    def new
      @worker = Worker.new
    end
  
    def edit
      @worker = Worker.find(params[:id])
    end
  
    def create
        @worker = Worker.new(worker_params)
        if @worker.save
          redirect_to workers_path, notice: 'Worker successfully created!'
        else
          render :new
        end
      end
  
    def update
      @worker = Worker.find(params[:id])
      if @worker.update(worker_params)
        redirect_to worker_path(@worker), notice: 'Worker was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @worker = Worker.find(params[:id])
      @worker.destroy
      redirect_to workers_path, notice: 'Worker was successfully deleted.'
    end
  
    private
  
    def worker_params
        params.require(:worker).permit(:workerid, :landid, :surname, :firstname, :lastname, :workexperience, :post)
    end
  end
  