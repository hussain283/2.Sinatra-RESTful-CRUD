get '/' do
	@notes = Note.order('title ASC')
	erb :index
end

get '/note/new' do
	@note = Note.new
	erb :note_form
end

post '/note/create' do
	@note = Note.new(params[:note])
	if @note.valid?
		@note.save
		redirect '/'
	else
		erb :note_form
	end
end

get '/note/edit/:id' do
	@note = Note.find(params[:id])
	p @note
	erb :note_form
end

put '/note/update/:id' do 
	@note = Note.find(params[:id])
	@note.assign_attributes(params[:note])
	if @note.valid?
		@note.save
		redirect '/'
	else
		erb :note_form
	end
end

delete '/note/delete' do
	Note.delete(params[:id])
	redirect "/"
end
