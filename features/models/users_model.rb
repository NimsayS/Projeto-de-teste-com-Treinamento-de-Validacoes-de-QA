class UserModel
    attr_accessor :name, :office, :projectId, :send_email, :leader, :description, :endDate, :cpf, :card, :flag, :credit

    def user_hash
        {
            name: @name,
            office: @office,
            projectId: @projectId,
            send_email: @send_email
        }
    end

    def create_project_hash
        {
            name: @name,
            leader: @leader,
            description: @description,
            endDate: @endDate
        }
    end

    def criar_cliente_hash
        {
        name: @name,
        cpf: @cpf,
        card: {
            flag: @flag,
            credit: @credit
        }
        }
    end
end