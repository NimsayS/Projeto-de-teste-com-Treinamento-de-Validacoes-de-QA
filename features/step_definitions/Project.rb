# frozen_string_literal: true

# Cadastrar projeto

Dado('que o usuario crie um projeto') do
  @post_url = Project_request.new
  @assert= Assertions.new
 end
 
 Quando('ele envia as informacoes') do
  @create_project = build(:create_project).create_project_hash
  @request_sucess = @post_url.create_project(@create_project)
 
 end
 
 Entao('o usuario deve efetuar a criacao do projeto {int}') do |codigo_esperado|
  puts @create_project
 end

# Cadastrar projeto errado 
Dado('que o usuario crie um projeto2') do
  @post2_url = Project_request.new
  @assert= Assertions.new
end

Quando('ele envia as informacoes erradas') do
  @payload_wrong = build(:wrong).create_project_hash
  @request_wrong = @post2_url.create_project_wrong(@payload_wrong)
end

Entao('o usuario não deve efetuar a criacao do projeto {int}') do |codigo_esperado|

        puts  @payload_wrong
end

# Pegar informações dos projetos

Dado('que o usuario busque todos os projetos') do
  @get_projects = Project_request.new
  @assert = Assertions.new
  
   
end

Quando('ele buscar') do
   @list_projects= @get_projects.find_project
 end
 

Entao('deve ser mostrado todos os projetos criados {int}') do |codigo_esperado|
      puts @list_projects
 end



# Atualizar usuário 

Dado('que o usuario atualize o projeto') do
  @request= Project_request.new
  @assert= Assertions.new

 end
 
 Quando('ele passar as informacoes') do

  @update_project= @request.uptade_project(@request.find_project['id']).to_s
  puts @request.find_project['id'].to_s


 end
 
 Entao('o projeto deve ser editado {int}') do |codigo_esperado|
    puts @update_project
    @assert.request_sucess(@update_project.code,@update_project.message)
    @assert.mensagem_atualizar_produto_sucesso(@update_project["message"])
    puts @update_project
  
 


 end

#Deletar Projeto

Dado('que o usuario delete o projeto') do
   @request_delete=Project_request.new
   @assert = Assertions.new
 end

Quando('ele passar as informacoes para deletar') do
  @delete_project= @request_delete.delete_user(@request_delete.find_project['id']).to_s #seria assim se pudessemos deletar o primeiro id 
  puts @request_delete.find_project['id'].to_s

end

Entao('o projeto deve ser deletado {int}') do |codigo_esperado|
  puts @delete_project
  @assert.request_sucess(@delete_project.code,@delete_project.message)
  @assert.mensagem_deletar_projeto(@delete_project["message"])
  puts @delete_project
end

# Colocar membro no projeto 

Dado('que o usuario coloque um membro no projeto') do
  @post_member = Project_request.new
  @assert= Assertions.new
end

Quando('ele envia as informacoes do membro') do
  @payload_member = build(:user).user_hash
  @request_member = @post_member.criar_membro_projeto(@payload_member)
end

Entao('o usuario deve colocar um membro no projeto {int}') do |codigo_esperado|
      puts  @payload_member
end

# Buscar membros pelo id
Dado('que o usuario busque todos os membros do projeto') do
  @get_members= Project_request.new
  @assert = Assertions.new
end

Quando('colocar id do projeto') do
    @id=sort_id.to_i
    @request_users = @get_members.buscar_membro(@id)
end

Entao('deve ser mostrado todos os membros do projeto {int}') do |codigo_esperado|
    puts @request_users
end


# Deletar membro de projeto

Dado('que o usuario delete um membro') do
  @delete_members= Project_request.new
  @assert = Assertions.new
end

Quando('ele passar as informacoes para deletar o membro') do
  @delete_members2= @delete_members.deletar_membro
end

Entao('o membro  deve ser deletado {int}') do |codigo_esperado|
  @assert.request_sucess(@delete_members2.code,@delete_members2.message)

end
