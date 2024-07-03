class Client_request

    def criar_cliente(create_client)
        response=Users.post('/clients', body:create_client.to_json)
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


    def criar_cliente_errado(create_client_wrong)
        response=Users.post('/clients', body:create_client_wrong.to_json)
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
        response=Users.get('/clients')
        if response.code == 200  
          response_body = JSON.parse(response.body)
          puts "Corpo da resposta: #{response.body}"
       end
        
    end
       def buscar_produtos_luxo
        response=Users.get('/financiamento-produtos')
        if response.code == 200  
          response_body = JSON.parse(response.body)
          puts "Corpo da resposta: #{response.body}"
       end
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