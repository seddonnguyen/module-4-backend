class FugitivesController < ApplicationController
  def index
    fugitives = Fugitive.all
    render json: fugitives, include: [:charges, :aliases]
  end
end