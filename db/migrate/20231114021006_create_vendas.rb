class CreateVendas < ActiveRecord::Migration[7.1]
  def change
    create_table :vendas do |t|
      t.integer :quantidade
      t.date :data
      t.references :medicamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
