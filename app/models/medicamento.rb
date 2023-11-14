class Medicamento < ApplicationRecord
  validates :nome, presence: true
  validates :valor, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :descrição, presence: true
end
