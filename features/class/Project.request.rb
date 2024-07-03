class Project_request



   def create_project(create_project)
        response=Users.post('/projects', body:create_project.to_json)
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

    

def create_project_wrong(wrong)
    
    response=Users.post('/projects', body:wrong.to_json)
    if response.code == 400  
        response_body = JSON.parse(response.body)
        $project_name = response_body['project']['name']
        $project_id = response_body['project']['id']
        puts "Corpo da resposta: #{response.body}"
        
      else
        puts "Projeto foi criado. Código de status: #{response.code}"
        puts "Corpo da resposta: #{response.body}"
      end
 
end

def buscar_membro(id)
    response=Users.get("/projects/#{id}/members")
    if response.code == 200  
        response_body = JSON.parse(response.body)
        puts "Corpo da resposta: #{response.body}"
     end
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


   def criar_membro_projeto(user)
    response=Users.post('/member', body: user.to_json)
    if response.code == 201  
        response_body = JSON.parse(response.body)
        $member_name = response_body['members']['name']
        $members_id = response_body['members']['office']
        puts "Membro #{$members_name} criado com sucesso!"
        puts "Membro office: #{$members_id}"
        puts "Corpo da resposta: #{response.body}"
        
      else
        puts "Falha na criação do membro. Código de status: #{response.code}"
      end
 
    end
   

    def deletar_membro
        Users.delete('/member/2/1')
    end 

end
