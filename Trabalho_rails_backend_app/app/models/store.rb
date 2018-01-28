class Store < ApplicationRecord

  validates :razao_social, presence: true, length: { in: 1..127 }
  validates :address, presence: true, length: { in: 1..254 }
  validates :cnpj, presence: true, length: { in: 14..14 }, uniqueness: true #uniqueness: true não pode dados em duplicidade
  validates :telefhone, presence: true, numericality: { only_integer: true },
  length: { in: 8..8 }


end
