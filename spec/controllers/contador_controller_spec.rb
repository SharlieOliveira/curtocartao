require 'rails_helper'

describe ContadorController do

	describe "GET /contador/[date]/detalhes" do

		it "responds 200 status code when 'data' is valid" do
			get :detalhes, data: "2014-08-10"
			expect(response).to have_http_status(:success)
		end

		it "responds 404 status code when 'data' is invalid" do
			expect do
				get :detalhes, data: "invalid"
			end.to raise_error(ActionController::RoutingError)
		end
	end
end
