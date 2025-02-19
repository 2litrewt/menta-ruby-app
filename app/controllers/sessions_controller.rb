class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:email], params[:password])

    if user
      redirect_back_or_to root_path, notice: 'ログインしました。'
    else
    flash.now[:alert] = 'メールアドレスまたはパスワードが違います'
    render:new
    end
  end　

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
  
end
