require 'sinatra'
require 'active_record'
require "sinatra/activerecord"

#The environment variable DATABASE_URL should be in the following format:
# => postgres://{user}:{password}@{host}:{port}/path
# configure :production, :development do
# db = URI.parse(ENV['DATABASE_URL'] || 'mysql://localhost/SinatraPOC_development')
 
ActiveRecord::Base.establish_connection(
 adapter: 'mysql2',
 host: 'localhost',
 username: 'root',
 password: '',
 database: 'pocSinatra_development',
 pool: '5'
)
end 