class ContadorController < ApplicationController
	def index
		@dias = Consumo.select(:data).order('data desc').map(&:data).uniq
	end

	def detalhes
		@data = params[:data]
		@consumos = Consumo.da_data(@data)
		@resumo = @consumos.resumo
		@resumo_cliente = @consumos.por_cliente


		@array_horas =["08:00", "08:30", "09:00", "09:30", "10:00", "10:30", "11:00", "11:30", "12:00", "12:15", "12:30", "12:45", "13:00", "13:15", "13:30", "13:45", "14:00", "14:15", "14:30", "14:45", "15:00", "15:15", "15:30", "15:45", "16:00", "16:30", "17:00", "17:30", "18:00", "18:30", "19:00", "19:30", "20:00", "20:30", "21:00", "21:30", "22:00", "22:30", "23:00", "23:30", "00:00", "00:30","01:00", "01:30","02:00", "02:30","03:00", "03:30","04:00", "04:30","05:00", "05:30","06:00", "06:30","07:00", "07:30"]
	end

	def relatorio_hora
		@data = params[:data]
		@hora_inicial = params[:hora_inicial]
		@hora_final = params[:hora_final]

		@resumo = Consumo.da_data(@data).no_periodo(Time.zone.parse(@data + ' ' + @hora_inicial), Time.zone.parse(@data + ' ' + @hora_final)).resumo
	end
end
