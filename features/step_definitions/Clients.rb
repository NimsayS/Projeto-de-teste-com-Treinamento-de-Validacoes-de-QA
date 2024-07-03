# frozen_string_literal: true

# Cadastrar Cliente 

Dado('que o cliente se cadastre') do
  @post_client = Client_request.new
  @assert= Assertions.new
  end
  
  Quando('ele envia as informacoes necessarias') do
    @payload_cliente = build(:create_client).criar_cliente_hash
    @request_sucess = @post_client.criar_cliente(@payload_cliente)
  end
  
  Entao('o cliente  deve efetuar o cadastro {int}') do |codigo_esperado|
     puts @payload_cliente
  end

# Cadastro errado de cliente

Dado('que o cliente se cadastre com informacoes erradas') do
  @post_client_wrong = Client_request.new
  @assert= Assertions.new
end

Quando('ele envia as informacoes erradas2') do
  @payload_cliente_wrong = build(:create_client_wrong).criar_cliente_hash
  @request_fail = @post_client_wrong.criar_cliente_errado(@payload_cliente_wrong)
end

Entao('o cliente nao deve efetuar o cadastro {int}') do |codigo_esperado|
  puts @cadastrar_cliente_errado
end

# Buscar Clientes

  Dado('que o usuario busque os clientes') do
    @get_clients = Client_request.new
    @assert = Assertions.new
  end
  
  Quando('ele buscar os clientes') do
    @list_clients= @get_clients.buscar_client
  end
  
  Entao('deve ser mostrado todos os clientes cadastrados {int}') do |codigo_esperado|
    puts @list_clients
  end

# Buscar produtos de luxo

Dado('que o usuario busque os produtos de luxo') do
      @get_product_luxo = Client_request.new
      @assert = Assertions.new
end

Quando('ele buscar os produtos') do
     @list_produtos= @get_product_luxo.buscar_produtos_luxo
end

Entao('deve ser mostrado todos os produtos de luxo {int}') do |codigo_esperado|
    puts @list_produtos
end

# Cadastre emprestimo

Dado('que o cliente faca um cadastro de um emprestimo') do
  @post_emprestimo = Client_request.new
  @assert= Assertions.new
end

Quando('ele envia as informacoes do emprestimo') do
  @cadastrar_emprestimo = @post_emprestimo.criar_emprestimo
end

Entao('o cliente  deve efetuar o emprestimo {int}') do |codigo_esperado|
   expect(@cadastrar_emprestimo.code).to eq(codigo_esperado)
   puts cadastrar_emprestimo
end

# Contratar financiamento

Dado('que o cliente faca um cadastro de um financiamento') do
  @post_financiamento = Client_request.new
  @assert= Assertions.new
end

Quando('ele envia as informacoes do financiamento') do
  @contratar_financiamento = @post_financiamento.criar_financiamento
end

Entao('o cliente  deve efetuar o financiamento {int}') do |codigo_esperado|
  expect(@contratar_financiamento.code).to eq(codigo_esperado)
end