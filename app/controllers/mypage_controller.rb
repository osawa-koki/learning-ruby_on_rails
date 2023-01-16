class MypageController < ApplicationController

  def to_index
    redirect_to action: :index
  end

  def index
    if user_signed_in?
      @user = User.find(current_user.id)
    else
      redirect_to new_user_session_path
    end
  end

  def update

    if user_signed_in? == false
      redirect_to new_user_session_path
      return
    end

    @user = User.find(current_user.id)
    if @user.update(account_update_params)
      @success = "ユーザー情報を更新しました。"
    else
      @error = "ユーザー情報の更新に失敗しました。"
    end
    render :index
  end
end
