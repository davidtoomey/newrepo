##Well split these up into two files

class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "You signed up successfully! Welcome to The Trap App"
      flash[:color]= "Valid"
    else
      flash[:notice] = "Form is Invalid"
      flash[:color]= "Invalid"
    end
    render "new"
  end
end

class SessionsController < ApplicationController
  def login
    #Login Form
  end
  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      flash[:notice] = "Welcome #{authorized_user.username}"
      redirect_to(:action => 'home')
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"
    end
  end
end
