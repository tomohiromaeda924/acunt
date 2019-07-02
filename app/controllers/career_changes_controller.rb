class CareerChangesController < ApplicationController
  
  before_action :career_changes_login_user
  
  def new 
    @career_changes = CareerChange.new
  end
  
  def data
    @career_changes = CareerChange.new(
      user_id: @current_user.id,
      syokusyu: params[:syokusyu],
      nennsyuu: params[:nennsyuu],
      kinnmuti: params[:kinnmuti],
      kinnmuzikann: params[:kinnmuzikann],
      kyuuzitu: params[:kyuuzitu],
      zanngyou: params[:zanngyou],
      sonota: params[:sonota],
      boki2: params[:boki2],
      boki1: params[:boki1],
      bkaikei2: params[:bkaikei2],
      bkaikei1: params[:bkaikei1],
      bokironn: params[:bokironn],
      zaimusyohyouronn: params[:zaimusyohyouronn],
      houzinnzei: params[:houzinnzei],
      syotokuzei: params[:syotokuzei],
      syouhizei: params[:syouhizei],
      goukakusya: params[:goukakusya],
      kaikeisi: params[:kaikeisi]
      )
      if @career_changes.save
        flash[:notice] = "送信しました"
        redirect_to "/career_changes/#{@current_user.id}/finish"
      else
        flash[:notice] = "全て入力してください。"
        render "career_changes/new"
      end
  end
  
  def finish
  end
  
  def career_changes_login_user
    if @current_user.id != params[:id].to_i 
      flash[:notice] = "権限がありません"
      redirect_to "/"
    end
  end
  

end
