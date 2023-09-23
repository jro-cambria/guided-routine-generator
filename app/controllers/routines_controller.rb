class RoutinesController < ApplicationController
    def index
      @routines = Routine.all
    end
  
    def new
      @routine = Routine.new
    end
  
    def create
      @routine = Routine.new(routine_params)
  
      if @routine.save
        redirect_to routines_path, notice: 'Routine was successfully created.'
      else
        render :new
      end
    end
  
    def show
      @routine = Routine.find(params[:id])
    end

    def edit
      @routine = Routine.find(params[:id])
    end

    def update
      @routine = Routine.find(params[:id])
    
      if @routine.update(routine_params)
        redirect_to routine_path(@routine), notice: 'Routine was successfully updated.'
      else
        render :edit
      end
    end


    def destroy
      @routine = Routine.find(params[:id])
      @routine.destroy
      redirect_to routines_path, notice: 'Routine was successfully deleted.'
    end
    
    
  
    def routine_params
      # Define the strong parameters for your Routine model here
      params.require(:routine).permit(:name, :description) # Replace with your actual attributes
    end
  end
  