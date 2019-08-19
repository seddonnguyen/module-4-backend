class ChargesController < ApplicationController
  def index
    charges = Charge.all
    render json: charges
  end

  def create
    Charge.create(allow_params)
  end

  private

  def allow_params
    params.require(:charge).permit(:fugitive_id, :name)
  end
end