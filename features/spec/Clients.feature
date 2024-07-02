# language: pt

Funcionalidade: Cliente

@cenario_criar_cliente
Esquema do Cenario: Cadastrar cliente
Dado que o cliente se cadastre
Quando ele envia as informacoes necessarias
Entao o cliente  deve efetuar o cadastro <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    201          |

@cenario_criar_cliente_nao_cadastrado
Esquema do Cenario: Cadastrar cliente errado
Dado que o cliente se cadastre com informacoes erradas
Quando ele envia as informacoes erradas2
Entao o cliente nao deve efetuar o cadastro <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    400          |


@cenario_buscar_clientes
Esquema do Cenario: Buscar todos os clientes
Dado que o usuario busque os clientes
Quando ele buscar os clientes
Entao deve ser mostrado todos os clientes cadastrados <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |

@cenario_buscar_produtos
Esquema do Cenario: Buscar lista de produtos de luxo
Dado que o usuario busque os produtos de luxo
Quando ele buscar os produtos
Entao deve ser mostrado todos os produtos de luxo <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |

@cenario_criar_emprestimo
Esquema do Cenario: Fazer emprestimo
Dado que o cliente faca um cadastro de um emprestimo
Quando ele envia as informacoes do emprestimo
Entao o cliente  deve efetuar o emprestimo <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    201          |

@cenario_criar_financiamento
Esquema do Cenario: Fazer financiamento
Dado que o cliente faca um cadastro de um financiamento
Quando ele envia as informacoes do financiamento
Entao o cliente  deve efetuar o financiamento <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    201          |