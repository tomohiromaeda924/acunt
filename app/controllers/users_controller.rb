class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "新規登録完了"
      redirect_to "/"
    else
      render "users/new"
    end
  end

  def destroy
    
  end
  
  def login_form
    @user = User.new
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to "/"
    else
      redirect_to "/users/login_form"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
  end
end
