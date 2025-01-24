class RentsController < ApplicationController
  before_action :set_rent, only: %i[show edit update destroy]

  def index
    @rents = Rent.all.includes(:client, :car)
  end

  def show
  end

  def new
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    if @rent.save
      redirect_to @rent
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @rent.update(rent_params)
      redirect_to @rent
    else
      render :edit
    end
  end

  def destroy
    @rent.destroy
    redirect_to rents_url
  end

  private

  def set_rent
    @rent = Rent.find(params[:id])
  end

  def rent_params
    params.require(:rent).permit(:rental_date, :return_date, :client_id, :car_id, :rental_cost)
  end
end
