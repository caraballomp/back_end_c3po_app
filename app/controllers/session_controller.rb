class SessionController < ApplicationController
  post '/login' do
    p 'login'
    p params
    @user = User.find_or_create_by(username: params[:username].strip)
  end
end
