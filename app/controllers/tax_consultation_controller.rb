class TaxConsultationController < ApplicationController
  
  before_action :tax_consultation_login_user
  
  def new
     @tax = TaxConsultation.new
  end
  
  def data
    @tax = TaxConsultation.new(name: @current_user.name, email: @current_user.email, message: params[:message])
    if @tax.save
      flash[:notice] = "送信しました。"
      redirect_to "/tax_consultation/#{@current_user.id}/finish"
    else
      render "tax_consultation/new"
    end
  end
  
  def finish
  end
  
  def tax_consultation_login_user
    if @current_user.id != params[:id].to_i 
      flash[:notice] = "権限がありません"
      redirect_to "/"
    end
  end
  
end
