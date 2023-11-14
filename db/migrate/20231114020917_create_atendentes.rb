class CreateAtendentes < ActiveRecord::Migration[7.1]
  def change
    create_table :atendentes do |t|
      t.text :usuário

      t.timestamps
    end
  end
end
