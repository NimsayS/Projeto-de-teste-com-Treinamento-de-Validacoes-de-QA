class Project_request



   def create_project
        nome = Faker::Name.name
        leader = Faker::Name.name
        description = Faker::Lorem.sentence
        response=Users.post('/projects', body: {
            "name": nome,
            "leader": leader,
            "description": description,
            "endDate": "2025-06-30"
         }.to_json)
         if response.code == 201  
            response_body = JSON.parse(response.body)
            $project_name = response_body['project']['name']
            $project_id = response_body['project']['id']
            puts "Projeto #{$project_name} criado com sucesso!"
            puts "Projeto id: #{$project_id}"
            puts "Corpo da resposta: #{response.body}"
            
          else
            puts "Falha na criação do projeto. Código de status: #{response.code}"
          end
     
        
    end
    

   def create_project_wrong
    nome = Faker::Name.name
    leader = Faker::Name.name
    description = Faker::Lorem.sentence
    Users.post('/projects', body: {
        "name": "",
        "leader": "",
        "description": "",
        "endDate": "2020-06-30"
     }.to_json)
end

    def find_project
    response=Users.get('/projects')
        if response.code == 200  
            response_body = JSON.parse(response.body)
            puts "Corpo da resposta: #{response.body}"
         end
    end


    def uptade_project(id)
        nome = Faker::Name.name
        leader = Faker::Name.name
        description = Faker::Lorem.sentence
        Users.put('/projects/'+ id.to_s, body: {
            "name": nome,
            "leader": leader,
            "description": description,
            "endDate": "2025-06-30"
         }.to_json)
         
        end

    def delete_user(id)
        Users.delete('/projects/'+ id.to_s)
    end

   def criar_membro_projeto
    nome = Faker::Name.name
    office = Faker::Name.name
    email = Faker::Internet.email(domain: 'example.com')
    Users.post('/member', body: {
        "name": nome,
        "office": office,
        "projectId": 2,
        "send_email": email
     }.to_json)
    end

    def buscar_membro
        response=Users.get('/projects/1/members')
        if response.code == 200  
            response_body = JSON.parse(response.body)
            puts "Corpo da resposta: #{response.body}"
         end
    end

    def deletar_membro
        Users.delete('/member/2/1')
    end 

end
