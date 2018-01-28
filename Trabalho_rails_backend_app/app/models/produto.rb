class Produto < ApplicationRecord

  validates :nomeprod, presence: true, length: { in: 1..254 }
  validates :descricao, presence: true, length: { in: 1..500 }
  validates :valor, presence: true, numericality: { only_float: true },
  length: { in: 1..100000000000000 }


end
