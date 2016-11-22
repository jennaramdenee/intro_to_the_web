require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Got a secret, can you keep it?"
end

get '/test' do
  "Just testing!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  #@age = params[:age]
  erb(:index)
end
