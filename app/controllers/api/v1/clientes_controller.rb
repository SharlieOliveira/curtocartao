class Api::V1::ClientesController < ApplicationController

  respond_to :json

  def index
    @clientes = Cliente.order(:nome).all
    render json: @clientes
  end

end
