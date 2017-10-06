require 'dotenv'
require 'redd'

env = ENV['ENVIRONMENT'] || ''
config_path = "../.config/#{env}.env"
unless File.exists? config_path
  raise "Configuration '#{config_path}' does not exist"
end
Dotenv.load config_path

def raise_env
    raise 'Insufficient configuration'
end

session = Redd.it(
  user_agent: ENV['rrb_user_agent']    || raise_env,
  client_id:  ENV['rrb_client_id']     || raise_env,
  secret:     ENV['rrb_client_secret'] || raise_env,
  username:   ENV['rrb_username']      || raise_env,
  password:   ENV['rrb_password']      || raise_env
)
