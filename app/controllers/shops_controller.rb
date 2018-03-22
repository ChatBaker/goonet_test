class ShopsController < ApplicationController

  def index
    @shops = Goonet::Shop.all
  end

  def show
    @shop = Goonet::Shop.find_by(owner_cd: params[:owner_cd])
  end

end
