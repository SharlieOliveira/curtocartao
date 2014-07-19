class Produto < ActiveRecord::Base

  # TODO: Testar unitariamente
  validates :nome, presence: true

  validates :preco, numericality: { greater_than_or_equal_to: 0.0 }
  validates :ordem, numericality: { greater_than: 0 }

end
