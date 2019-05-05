require 'sinatra'
require 'make_todo'

get '/' do
    @tareas = Tarea.all
    erb :index
end

get '/add' do
    erb :add
end

post '/add' do
    Tarea.create(params[:title])
    redirect('/')
end

get '/update/:id' do
    Tarea.update(params[:id])
    redirect('/')
end

get '/delete/:id' do
    Tarea.destroy(params[:id])
    redirect('/')
end