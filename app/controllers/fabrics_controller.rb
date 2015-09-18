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
    @fabric.update(fabric_params)
    redirect_to @fabric
  end

  def new
    @fabric = Fabric.new
  end

  def create
    @fabric = Fabric.new(fabric_params)
    @fabric.save!
    redirect_to @fabric
  end

  def destroy
    @fabric = Fabric.find(params[:id])
    @fabric.destroy
    redirect_to fabrics_path
  end

  private

  def fabric_params
    params.require(:fabric).permit(:fabric_type, :color, :pattern, :length, :width, :price, :description, :offered_on)
  end
end
