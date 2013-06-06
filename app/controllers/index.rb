# CREATE
post '/notes' do
  Note.create(params[:note])
  redirect '/'
end

# READ
get '/notes' do
  @notes = Note.all
  erb :index
end

get '/' do
  redirect '/notes'
end

# UPDATE
get '/notes/:id' do
  @note = Note.find(params[:id])
  erb :update_note
end

put '/notes' do
  note = Note.find(params[:note]["id"])
  note.update_attributes(params[:note])
  redirect '/'
end

# DESTROY
delete '/notes/:id' do
  Note.destroy(params[:id]) # removes dependent objects from DB, too! learn more!
  200
  #redirect "/"
end