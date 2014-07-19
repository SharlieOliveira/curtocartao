# encoding: utf-8

class Api::V1::ConsumoController < ApplicationController
  protect_from_forgery :except => :confirma

  def confirma
    cliente = Cliente.find(params[:id])
    consumo = params[:consumo]

    valor = 0

    consumo.each do |produto|
      produto_id = produto[0].to_i
      quantidade = produto[1].to_i

      next if quantidade == 0

      valor += Produto.find(produto_id).preco * quantidade
      Consumo.create!(:data => Date.today, :cliente_id => cliente.id, :produto_id => produto_id, :quantidade => quantidade)
    end

    cliente.saldo -= valor
    cliente.save!

    @cliente = cliente
    @valor = valor

    respond_to do |format|
      format.json {
        render :json => {
          :saldo => @cliente.saldo
        }
      }
    end
  end
end

