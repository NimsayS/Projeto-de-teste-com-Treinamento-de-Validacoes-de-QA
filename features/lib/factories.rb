def sort_id
    user_file = YAML.load_file('features/support/massa/user.yml')
    ids = "#{user_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids
end