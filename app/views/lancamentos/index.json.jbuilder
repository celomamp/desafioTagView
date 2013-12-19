json.array!(@lancamentos) do |lancamento|
  json.extract! lancamento, :id, :user_id, :data, :descricao, :valor
  json.url lancamento_url(lancamento, format: :json)
end
