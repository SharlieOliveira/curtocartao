require 'rails_helper'

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

  describe "#recarregar_dez_reais" do
    it do
      expect do
        cliente.recarregar_dez_reais
      end.to change{ cliente.saldo }.from(0.0).to(10.0)
    end
    it do
      expect do
        cliente.recarregar_dez_reais
      end.to change{ cliente.recargas.count }.from(0).to(1)
    end
    it do
      cliente.recarregar_dez_reais
      expect(cliente.recargas.last.valor).to eq(10.0)
    end
  end

  describe "#recarregar_vinte_reais" do
    it do
      expect do
        cliente.recarregar_vinte_reais
      end.to change{ cliente.saldo }.from(0.0).to(20.0)
    end
    it do
      expect do
        cliente.recarregar_vinte_reais
      end.to change{ cliente.recargas.count }.from(0).to(1)
    end
    it do
      cliente.recarregar_vinte_reais
      expect(cliente.recargas.last.valor).to eq(20.0)
    end
  end

  describe "#recarregar_cinquenta_reais" do
    it do
      expect do
        cliente.recarregar_cinquenta_reais
      end.to change{ cliente.saldo }.from(0.0).to(50.0)
    end
    it do
      expect do
        cliente.recarregar_cinquenta_reais
      end.to change{ cliente.recargas.count }.from(0).to(1)
    end
    it do
      cliente.recarregar_cinquenta_reais
      expect(cliente.recargas.last.valor).to eq(50.0)
    end
  end
end
