class JobOffersController < ApplicationController
  
  before_action :job_offers_login_user
  
  def new
    @job_offers = JobOffer.new
  end
  
  def data
    @job_offers = JobOffer.new(
      gyoumu: params[:gyoumu],
      keiyakukikann: params[:keiyakukikann],
      siyoukikann: params[:siyoukikann],
      kinnmuti: params[:kinnmuti],
      kinnmuzikann: params[:kinnmuzikann],
      kyuukei: params[:kyuukei],
      kyuuzitu: params[:kyuuzitu],
      zikanngai: params[:zikanngai],
      tinnginn: params[:tinnginn],
      hokenn: params[:hokenn],
      bosyuusya: params[:bosyuusya],
      user_id: @current_user.id
      )
      if @job_offers.save
        flash[:notice] = "送信しました"
        redirect_to("/job_offers/#{@current_user.id}/finish")
      else
        render "job_offers/new"
      end
  end
  
  def job_offers_login_user
    if @current_user.id != params[:id].to_i 
      flash[:notice] = "権限がありません"
      redirect_to "/"
    end
  end
end
