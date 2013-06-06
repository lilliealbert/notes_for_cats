# CREATE
post '/save_note' do
  Note.create(params[:note])
  redirect '/'
end

# READ
get '/' do
  @notes = Note.all
  erb :index
end

# UPDATE
get '/update_note' do
  @note = Note.find(params[:note]["id"])
  erb :update_note
end

post '/update_note' do
  note = Note.find(params[:note]["id"])
  note.update_attributes(params[:note])
  redirect '/'
end

# DESTROY
post '/delete_note' do
  Note.delete(params[:note]["id"])
  redirect "/"
end