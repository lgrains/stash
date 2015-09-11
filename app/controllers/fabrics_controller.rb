class FabricsController < ApplicationController
  def index
    @fabrics = Fabric.all
  end

  def show
    @fabric = Fabric.find(params[:id])
  end

  def edit
    @fabric = Fabric.find(params[:id])
  end

  def update
    @fabric = Fabric.find(params[:id])
    fabric_params = params.require(:fabric).permit(:fabric_type, :color, :pattern, :length, :width, :price, :description)
    @fabric.update(fabric_params)
    redirect_to @fabric
  end
end
