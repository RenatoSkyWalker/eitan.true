class CreateMedicamentos < ActiveRecord::Migration[7.1]
  def change
    create_table :medicamentos do |t|
      t.string :nome
      t.float :valor
      t.text :descrição

      t.timestamps
    end
  end
end
