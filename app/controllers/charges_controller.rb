class ChargesController < ApplicationController
  def index
    charges = Charge.all
    render json: charges
  end
end