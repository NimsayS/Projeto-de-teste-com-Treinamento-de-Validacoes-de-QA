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
