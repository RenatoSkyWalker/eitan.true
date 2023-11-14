class Venda < ApplicationRecord
  belongs_to :medicamento

  validates :quantidade, presence: true, numericality: { greater_than: 0 }
  validates :data, presence: true
end
