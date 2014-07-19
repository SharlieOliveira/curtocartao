class Api::V1::ProdutosController < ApplicationController

respond_to :json

def index
  @produtos = Produto.all
  render json: @produtos
end

end

