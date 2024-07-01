

class Assertions
    include RSpec::Matchers
    def request_sucess(response,message)
        expect(response).to eql (200)
        expect(message).to eql 'OK'
    end

    def request_created(response,message)
        expect(response).to eql (201)
        expect(message).to eql 'Created'
    end

    def request_fail(response,message)
        expect(response).to eql (400)
        expect(message).to eql 'Bad Request'
    end

    def mensagem_cadastrar_produto_sucesso(message)
        expect(message).to eql 'Projeto criado com sucesso!'
    end

    def mensagem_atualizar_produto_sucesso(message)
        expect(message).to eql 'Projeto atualizado com sucesso'
    end

    def mensagem_cadastrar_produto_fail(message)
        expect(message).to eql 'Dados inválidos fornecidos'
    end

    def mensagem_deletar_projeto(message)
        expect(message).to eql "Projeto #{$project_name} deletado com sucesso!"
    end

    def mensagem_cadastrar_membro(message)
        expect(message).to eql 'Membro adicionado com sucesso ao projeto'
    end
   
 
end
