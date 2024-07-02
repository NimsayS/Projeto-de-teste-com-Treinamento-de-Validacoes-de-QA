![Plano_de_Teste___projects (1)](https://github.com/NimsayS/Projeto-de-teste-com-Treinamento-de-Validacoes-de-QA/assets/104380424/61a1c33f-f011-4069-9bdd-f19978103436)
# Equipe

- Yasmin Dantas de Araújo Lima

- José Matheus(Avaliador).



# Escopo

Cobrir a rota de /projects e /member da  API de JSONs para Treinamento de Validações de QA



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
- - **RF_011:** Os ID's não podem ser repetidos;


# Testes Funcionais 


| CT     | Método | Descrição| Retorno|
|--------|--------|--------|--------|
| CT_001 | POST   | Usuário faz cadastro do projeto com sucesso | Deve ser retornado status code 201,"message":"Projeto criado com sucesso!" |
| CT_002 | POST   | Campos não preenchidos na hora do cadastro | Deve ser retornado status code 400,"message":"Dados inválidos fornecidos" |
| CT_003 | GET   | Usuário faz a busca dos projetos existentes | Deve ser retornado status code 200 |
| CT_004 | PUT   | Usuário atualiza informações do projeto | Deve ser retornado status code 200,"message": "Projeto atualizado com sucesso" |
| CT_005 | DELETE | Usuário deleta projeto | Deve ser retornado status code 200, "message":"Projeto deletado com sucesso" |
| CT_006 | POST   | Usuário faz cadastro de membro em projeto | Deve ser retornado status code 201,"message":"Membro adicionado com sucesso ao projeto" |
| CT_007 | GET    | Usuário faz busca de membros com o id do projeto | Deve ser retornado status code 200 e os membros do projeto |

![Plano_de_Teste_Clientes](https://github.com/NimsayS/Projeto-de-teste-com-Treinamento-de-Validacoes-de-QA/assets/104380424/4338fe93-9fc2-4f8a-9246-2098d076c6c9)

# Escopo

Cobrir a rota de /clients, /emprestimo e /contratar-financiamento da  API de JSONs para Treinamento de Validações de QA



# Cobertura de critérios  de aceite

- **RF_001:** Clientes devem efetuar o cadastro;
- **RF_002:** Deve ter uma lista de todos os usuários;
- **RF_003:** Os campos devem ser preenchidos;
- **RF_004:** O valor do crédito deve ser maior igual a 1000;
- **RF_005:** O CPF deve ser válido;
- **RF_006:** Os ID's não podem ser repetidos;
- **RF_007:** O cliente deve ser capaz de contratar um financiamento;
- **RF_008:** O cliente deve ser capaz de fazer um empréstimo;


# Testes Funcionais 


| CT     | Método | Descrição| Retorno|
|--------|--------|--------|--------|
| CT_001 | POST   | O cliente efetua o seu cadastro | Deve ser retornado status code 201,"message":"Cliente registrado com sucesso!" |
| CT_002 | POST   | Campos não preenchidos na hora do cadastro | Deve ser retornado status code 400,"message":"Falha na criação do cliente" |
| CT_003 | GET   | Usuário faz a busca dos clientes cadastrados | Deve ser retornado status code 200 |
| CT_004 | GET   | Usuário faz a busca dos produtos de luxo | Deve ser retornado status code 200 |
| CT_005 | POST   | Usuário faz cadastro de um emprestimo | Deve ser retornado status code 201,"message":"Empréstimo aprovado." |
| CT_006 | POST   | Usuário contrata financiamento | Deve ser retornado status code 201,"message": "string" |

