class PueblosMagicosController < ApplicationController
 # before_action :set_magictown, only: [:show]

  def index
    @magictowns = Magictown.order(title: :asc)
  end

  def show
    @magictown = Magictown.find(params[:id])
  end

end
