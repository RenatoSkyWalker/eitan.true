class Atendente < ApplicationRecord
   validates :usuário, presence: true, uniqueness: true
end
