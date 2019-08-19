class AliasesController < ApplicationController
  def index
    aliases = Alias.all
    render json: aliases
  end
end