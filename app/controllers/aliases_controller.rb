class AliasesController < ApplicationController
  def index
    aliases = Alias.all
    render json: aliases
  end

  def create
    Alias.create(allow_params)
  end

  private

  def allow_params
    params.require(:alias).permit(:fugitive_id, :name)
  end
end