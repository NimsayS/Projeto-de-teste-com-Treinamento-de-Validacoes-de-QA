# language: pt

Funcionalidade: Projetos

@cenario_criar_projeto
Esquema do Cenario: Criar projeto
Dado que o usuario crie um projeto
Quando ele envia as informacoes
Entao o usuario deve efetuar a criacao do projeto <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    201          |

@cenario_criar_projeto_errado
Esquema do Cenario: Criar projeto errado
Dado que o usuario crie um projeto2
Quando ele envia as informacoes erradas
Entao o usuario não deve efetuar a criacao do projeto <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    400          |


@cenario_buscar_projetos
Esquema do Cenario: Buscar todos os projetos criados
Dado que o usuario busque todos os projetos
Quando ele buscar
Entao deve ser mostrado todos os projetos criados <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |

@cenario_atualizar_projetos
Esquema do Cenario: Atualizar projeto
Dado que o usuario atualize o projeto
Quando ele passar as informacoes
Entao o projeto deve ser editado <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |

@cenario_deletar_projeto
Esquema do Cenario: Deletar projeto
Dado que o usuario delete o projeto
Quando ele passar as informacoes para deletar
Entao o projeto deve ser deletado <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |


@cenario_membro_projeto
Esquema do Cenario: Colocar membro em projeto
Dado que o usuario coloque um membro no projeto
Quando ele envia as informacoes do membro
Entao o usuario deve colocar um membro no projeto <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    201          |

@cenario_buscar_membro
Esquema do Cenario: Buscar todos os membros do projeto
Dado que o usuario busque todos os membros do projeto
Quando colocar id do projeto
Entao deve ser mostrado todos os membros do projeto <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |

@cenario_deletar_membro
Esquema do Cenario: Deletar membro do projeto
Dado que o usuario delete um membro
Quando ele passar as informacoes para deletar o membro
Entao o membro  deve ser deletado <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |
