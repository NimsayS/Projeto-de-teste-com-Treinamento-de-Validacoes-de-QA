![Plano_de_Teste___projects (1)](https://github.com/NimsayS/Projeto-de-teste-com-Treinamento-de-Validacoes-de-QA/assets/104380424/61a1c33f-f011-4069-9bdd-f19978103436)
# Equipe

- Yasmin Dantas de Araújo Lima

- José Matheus(Avaliador).



# Escopo

Cobrir a rota de /projects da  API de JSONs para Treinamento de Validações de QA



# Cobertura de critérios  de aceite

- **RF_001:** Usuarios devem efetuar a criacao do projeto;
- **RF_002:** Usuarios devem poder atualizar as informações do projeto;
- **RF_003:** Os campos devem ser preenchidos;
- **RF_004:** A data de término deve ser maior que a data atual;
- **RF_005:** O email deve ser válido;
- **RF_006:** O usuário deve poder deletar projeto;
- **RF_007:** O usuário deve poder colocar membros no projeto;
- **RF_008:** O usuário deve poder buscar informações dos projetos;
- **RF_009:** O usuário deve poder deletar membro de projeto;
- **RF_010:** O usuário deve poder buscar membro por id do projeto;
- **RF_011:** O usuário deve poder deletar membro pelo id do projeto e id do membro;


# Testes Funcionais 


| CT     | Método | Descrição| Retorno|
|--------|--------|--------|--------|
| CT_001 | POST   | Usuário faz cadastro do projeto com sucesso | Deve ser retornado status code 201,"message":"Projeto criado com sucesso!" |
| CT_002 | POST   | Campos não preenchidos na hora do cadastro | Deve ser retornado status code 400,"message":"Dados inválidos fornecidos" |
| CT_003 | GET   | Usuário faz a busca dos projetos existentes | Deve ser retornado status code 200 |
| CT_004 | PUT   | Usuário atualiza informações do projeto | Deve ser retornado status code 200,"message": "Projeto atualizado com sucesso" |
| CT_005 | DELETE | Usuário deleta projeto | Deve ser retornado status code 200, "message":"Projeto deletado com sucesso" |
| CT_006 | POST   | Usuário faz cadastro de membro em projeto | Deve ser retornado status code 201,"message":"Membro adicionado com sucesso ao projeto" |
