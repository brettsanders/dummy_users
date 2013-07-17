get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/login' do

  @user = User.authenticate(params[:user][:email], params[:user][:password])

  if @user 
    @notification = "Logged In"
  else
    @notification = "Invalid Login"
  end

  erb :index
end

post '/signup' do 
  User.create(params[:user])
  erb :index
end
