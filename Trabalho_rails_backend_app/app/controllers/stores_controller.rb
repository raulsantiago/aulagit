class StoresController < ApplicationController
  before_action :set_store, only: [:destroy]


  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    
    if @store.save
      flash[:notice] = "Loja criada com sucesso."
      redirect_to stores_path
    else
      flash.now[:alert] = "Algo errado aconteceu."
      render "new"
    end
  end

  def index
    @stores = Store.all
  end

  def destroy
    #@store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path
  end

    private

    def set_store
      @store = Store.find(params[:id])
    end



  def store_params
    params.require(:store).permit(:address, :telephone, :cnpj, :razao_social)
  end

end
