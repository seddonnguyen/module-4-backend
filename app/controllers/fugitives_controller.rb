class FugitivesController < ApplicationController
  def index
    fugitives = Fugitive.all
    render json: fugitives
  end
end