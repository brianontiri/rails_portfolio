class SessionsController < ApplicationController
  def new
  end
def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id

    flash[:success] = "ssssup!!!!! welcome to my wall"
    redirect_to root_path
  else
    flash.now[:danger] = "sorry your email or password does not match"
    render 'new'
  end
end

 def logout
 end

def destroy
  session[:user_id] = nil
  flash[:success] = " see you again "
  redirect_to root_path
  end

 def signup
   end
def make
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id

    flash[:success] = "ssssup!!!!! welcome to my wall"
    redirect_to root_path
  else
    flash.now[:danger] = "sorry your email or password does not match"
    render 'signup'
  end

end
   private
   def user_params
     params.permit(:email, :password)
   end
end
