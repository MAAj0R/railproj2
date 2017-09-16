class WelcomeController < ApplicationController
		skip_before_filter :verify_authenticity_token, :only => :auth_callback
  def index	
  end
   def auth_callback
    auth = request.env['omniauth.auth']
    session[:current_usuario] = { username: auth.info['nickname'],
                                          image: auth.info['image'],
                                          uid: auth.uid }
                                           
    redirect_to root_url
  end

  def eliminar
  	session[:current_usuario] = nil
  	redirect_to root_path
  end
end
