class ProdutosController < ApplicationController
  before_action :set_produto, only: [:destroy]


  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)

    if @produto.save
      flash[:notice] = "Produto criado com sucesso."
      redirect_to produtos_path
    else
      flash.now[:alert] = "Algo errado aconteceu."
      render "new"
    end
  end

  def index
    @produto = Produto.all
  end

  def destroy
    @produto.destroy
    redirect_to produtos_path
  end

    private

    def set_produto
      @produto = Produto.find(params[:id])
    end

  def produto_params
    params.require(:produto).permit(:nomeprod, :descricao, :valor)
  end

end
