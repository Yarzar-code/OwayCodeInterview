class CabsController < ApplicationController
  before_action :set_cab, only: [:show, :edit]

  def index
    @cabs = Cab.order('created_at DESC')
  end

  def new
    @cab = Cab.new
  end

  def show
  end

  def create
    @cab = Cab.new(cab_params)
    if @cab.save
      redirect_to cabs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cab = Cab.find(params[:id])

    if @cab.update(cab_params)
      redirect_to cabs_path
    else
      render 'edit'
    end
  end

  def destroy
    @cab = Cab.find(params[:id])
    if @cab.destroy
      redirect_to cabs_path
    else
      redirect_to @cab
    end
  end

  private
  def cab_params
    params.require(:cab).permit(:plate_number, :model, :mileage, :car_photo)
  end

  def set_cab
    @cab = Cab.find(params[:id])
  end
end
