class FugitivesController < ApplicationController
  def index
    fugitives = Fugitive.all
    render json: fugitives, include: [:charges, :aliases]
  end

  def create
    Fugitive.create(allow_params)
  end

  def destroy
    fugitive = Fugitive.find(params[:id])
    fugitive.charges.each { |charge| charge.destroy }
    fugitive.aliases.each { |aliase| aliase.destroy }
    fugitive.destroy
  end

  def update
    fugitive = Fugitive.find(params[:id])
    fugitive.image = params[:image]
    fugitive.name = params[:name]
    fugitive.height = params[:height]
    fugitive.weight = params[:weight]
    fugitive.race = params[:race]
    fugitive.hair = params[:hair]
    fugitive.eyes = params[:eyes]
    fugitive.sex = params[:sex]
    fugitive.captured = params[:captured]
    fugitive.save
  end

  private

  def allow_params
    params.require(:fugitive).permit(:image, :name, :height, :weight, :race, :hair, :eyes, :sex, :captured)
  end
end