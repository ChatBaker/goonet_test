class ZaikosController < ApplicationController

  def index
    @zaikos = Goonet::Zaiko.all
  end

  def show
      @zaiko = Goonet::Zaiko.find_by(stock_id: params[:stock_id])
  end

end
