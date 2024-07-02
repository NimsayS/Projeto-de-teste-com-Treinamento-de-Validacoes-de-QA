require 'cucumber'
require 'httparty'
require 'rspec'
require 'faker'
require 'rspec/expectations'
require 'factory_bot'

World(FactoryBot::Syntax::Methods)

FactoryBot.definition_file_paths = [File.join(File.dirname(__FILE__), '../factories')]
FactoryBot.find_definitions
