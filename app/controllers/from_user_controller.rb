class FromUserController < ApplicationController
  def first
    @from_user = FromUser.new
  end
  
  def data
    @from_user = FromUser.new(name: params[:name], email: params[:email], message: params[:message])
    if @from_user.save
      redirect_to "/from_user/finish"
    else
      render "from_user/first"
    end
  end
  
  def finish
  end
 
end
