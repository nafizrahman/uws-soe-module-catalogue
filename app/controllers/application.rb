# Filters added to this controller will be run for all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
class ApplicationController < ActionController::Base

# private
## 
# def authorize
#  unless User.find_by_id(session[:user_id])
#   session[:original_uri] = request.request_uri
#   flash[:notice] = "Please log in"
#   redirect_to(:controller => "login", :action=> "login")
#   end
#  end
#  
#  def login
#    session[:user_id] = nil
#    if request.post?
#     user = User.authenticate(params[:name], params[:password])
#     if user
#       session[:user_id] = user.id
#       uri = session[:original_uri]
#       session[:original_uri] = nil
#       redirect_to(uri || { :action => "index"})
#     else
#      flash[:notice] = "Invalid user/password combination"
 #    end
#   end
end