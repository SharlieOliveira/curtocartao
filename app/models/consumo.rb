class Consumo < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :produto

	scope :da_data, lambda {|data| where("data = ?", data)}
	scope :do_cliente, lambda {|cliente_id| where("cliente_id = ?", cliente_id)}
	#TODO: Remove query using autoincrement number
	scope :do_avulso, lambda {where(:cliente_id => 950)}
	scope :resumo, select("produto_id, sum(quantidade) as quantidade").group("produto_id")
	scope :por_cliente, select("cliente_id, produto_id, sum(quantidade) as quantidade").group("cliente_id, produto_id")
	scope :no_periodo, lambda {|hora_inicial, hora_final| where("created_at between ? and ?", hora_inicial, hora_final)}
end
