require 'rails_helper'

describe Api::V1::ClientesController do
	let!(:cliente) { create(:cliente) }

	describe "GET /api/v1/clientes.json" do
		before(:each) do
			get "/api/v1/clientes.json"
		end

		it { expect(response).to have_http_status(:success) }
		it { expect(json.size).to eq(1) }

		it { expect(json[0]["nome"]).to eq(cliente.nome) }
		it { expect(json[0]["email"]).to eq(cliente.email) }
		it { expect(json[0]["saldo"]).to eq(cliente.saldo) }
	end
end
