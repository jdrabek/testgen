class UserController < ApplicationController
  before_filter :authenticate
  layout "questions"

  def chpass2
       @u=User.find(:first)   
       @u.update_attributes(params[:user])
  end
        
  

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
        u=User.find(:first)
        u.username == username &&  u.password == password
    end
  end
end
