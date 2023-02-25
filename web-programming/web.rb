require 'sinatra'

get '/' do
    'Hello, world!'
end




get '/message/:name' do
    name = params['name']
    color = params['color'].nil? ? 'DodgerBlue' : params['color']
    erb :message, locals: {
        color: color,
        name: name
    }
end

get '/login' do
    erb :login
end

post '/login' do
    if params['username'] == 'admin' && params['password'] == 'admin'
        return 'Logged in!'
    else
        redirect '/login'
    end
end