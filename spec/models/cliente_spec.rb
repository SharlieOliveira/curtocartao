require 'spec_helper'

describe Cliente do
  let!(:cliente) { create(:cliente) }

  describe "#recarregar_cinco_reais" do
    it do
      expect do
        cliente.recarregar_cinco_reais
      end.to change{ cliente.saldo }.from(0.0).to(5.0)
    end
    it do
      expect do
        cliente.recarregar_cinco_reais
      end.to change{ cliente.recargas.count }.from(0).to(1)
    end
    it do
      cliente.recarregar_cinco_reais
      expect(cliente.recargas.last.valor).to eq(5.0)
    end
  end
end
