json.extract! medicamento, :id, :nome, :valor, :descrição, :created_at, :updated_at
json.url medicamento_url(medicamento, format: :json)
