class Api::GetCabsController < Api::ApiController

  def get_all_cabs
    @cabs=Cab.order('created_at DESC')
    render json: @cabs, status: 200
  end

  def get_cab
    @cab=Cab.find(params[:id])
    render json: @cab, status: 200
  end
end
