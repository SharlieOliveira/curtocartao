class Cliente < ActiveRecord::Base
	has_many :consumos
  has_many :contribuicaos
  has_many :recargas

  # TODO: Testar unitariamente após merge do branch com rspec
  validates :nome, :email, :saldo, presence: true

  def recarregar_cinco_reais
    recarregar(5.0)
  end

  def recarregar_dez_reais
    recarregar(10.0)
  end

  def recarregar_vinte_reais
    recarregar(20.0)
  end

  def recarregar_cinquenta_reais
    recarregar(50.0)
  end

  private
    def recarregar(valor)
      self.recargas.create(valor: valor)
      self.saldo += valor
      self.save!
    end
end
