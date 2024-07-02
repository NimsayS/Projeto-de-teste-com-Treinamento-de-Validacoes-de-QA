class UserModel
    attr_accessor :name, :office, :projectId, :send_email

    def user_hash
        {
            name: @name,
            office: @office,
            projectId: @projectId,
            send_email: @send_email
        }
    end
end