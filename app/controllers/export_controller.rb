class ExportController < ApplicationController
  require 'csv'

  def export_csv
    # Lógica para gerar o arquivo CSV
    medicamentos_csv = generate_csv(Medicamento.all)
    atendentes_csv = generate_csv(Atendente.all)
    vendas_csv = generate_csv(Venda.all)

    # Crie o conteúdo do arquivo CSV
    csv_data = "Medicamentos:\n#{medicamentos_csv}\n\nAtendentes:\n#{atendentes_csv}\n\nVendas:\n#{vendas_csv}"

    respond_to do |format|
      format.csv { send_data csv_data, filename: "export.csv" }
      format.html { redirect_to root_path, notice: 'Arquivo CSV gerado com sucesso.' }
    end
  end

  private

  def generate_csv(records)
    CSV.generate(headers: true) do |csv|
      if records.any?
        # Adicione cabeçalhos
        csv << records.first.attributes.keys

        # Adicione dados
        records.each { |record| csv << record.attributes.values }
      else
        # Adicione um cabeçalho vazio se não houver registros
        csv << ["Sem registros Disponíveis"]
      end
    end
  end
end
