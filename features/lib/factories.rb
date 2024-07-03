require 'faker'
require_relative '../models/users_model'

def sort_id
    user_file = YAML.load_file('features/support/massa/user.yml')
    ids = "#{user_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids
end

FactoryBot.define do
    factory :user, class: UserModel do
        name {Faker::Name.name}
        office {Faker::Name.name}
        projectId {1}
        send_email {Faker::Internet.email(domain: 'example.com')}
    end
end

FactoryBot.define do
    factory :wrong, class: UserModel do
        name {""}
        leader {""}
        description {""}
        endDate {"2020-06-30"}
    end
end

FactoryBot.define do
    factory :create_project, class: UserModel do
        name {Faker::Name.name}
        leader {Faker::Name.name}
        description {Faker::Lorem.sentence}
        endDate {"2025-06-30"}
    end
end

FactoryBot.define do
    factory :create_client, class: UserModel do
        name {Faker::Name.name}
        cpf {Faker::Number.between(from: 10000000000, to: 99999999999)  }
        flag {"MASTER"}
        credit {Faker::Number.between(from: 1000, to: 10000)  }
    end
end

FactoryBot.define do
    factory :create_client_wrong, class: UserModel do
        name {""}
        cpf {""}
        flag {""}
        credit {0}
    end
end