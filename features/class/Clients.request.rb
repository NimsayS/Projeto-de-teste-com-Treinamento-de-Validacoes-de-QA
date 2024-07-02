class Client_request

    def criar_cliente
        nome = Faker::Name.name
        leader = Faker::Name.name
        credit = Faker::Number.between(from: 1000, to: 10000)  
        cpf = Faker::Number.between(from: 10000000000, to: 99999999999)  
        response=Users.post('/clients', body: {
            "name": nome,
            "cpf": cpf,
            "card": {
              "flag": "MASTER",
              "credit": credit
            }
          }.to_json)
          if response.code == 201  
            response_body = JSON.parse(response.body)
            $client_name = response_body['client']['nome']
            $client_id = response_body['client']['id']
            puts "Cliente #{$client_name} criado com sucesso!"
            puts "Cliente id: #{$client_id}"
            puts "Corpo da resposta: #{response.body}"
            
          else
            puts "Falha na criação do cliente. Código de status: #{response.code}"
          end
end

    def criar_cliente_errado
        response=Users.post('/clients', body: {
            "name": "",
            "cpf": "",
            "card": {
              "flag": "MASTER",
              "credit": 0
            }
          }.to_json)
          if response.code == 201  
            response_body = JSON.parse(response.body)
            $client_name = response_body['client']['nome']
            $client_id = response_body['client']['id']
            puts "Cliente #{$client_name} criado com sucesso!"
            puts "Cliente id: #{$client_id}"
            puts "Corpo da resposta: #{response.body}"
            
          else
            puts "Falha na criação do cliente. Código de status: #{response.code}"
          end
end
        def buscar_client
        Users.get('/clients')
        
    end
       def buscar_produtos_luxo
        Users.get('/financiamento-produtos')
       end

       def criar_emprestimo
        emprestimo = Faker::Number.between(from: 1000, to: 10000)  
        response=Users.post('/emprestimo', body: {
          "id_cliente": "4",
          "emprestimo": emprestimo
        }.to_json)

        end

        
       def criar_financiamento
        email = Faker::Internet.email(domain: 'example.com')
        response=Users.post('/contratar-financiamento', body: {
          "id_cliente": "4",
          "id_produto": "2",
          "receber_email": email,
          "code_emprestimo": "1"
        }.to_json)

        end
end