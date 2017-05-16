class BeersController < ApplicationController
  def index
    if params[:brewery_name].present?
      @beers = Beer.includes(:brewery, :style).where(breweries: {name: params[:brewery_name]})
    else
      @beers = Beer.includes(:brewery, :style).all
    end
  end
end
