class LikesController < ApplicationController
  before_action :require_user_logged_in
  
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    micropost.liking(current_user)
    flash[:success] = '投稿をお気に入りしました。'
    redirect_to current_user
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    micropost.unliking(current_user)
    flash[:success] = 'お気に入りを外しました。'
    redirect_to current_user
  end
end
