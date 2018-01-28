class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :razao_social
      t.string :address
      t.string :cnpj
      t.integer :telefhone

      t.timestamps
    end
  end
end
