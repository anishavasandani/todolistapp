class UsersController < ActionController::Base

  def index
    @users = User.all

    respond_to do |format|
      format.json { render_for_api :public, :json => @users}
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.json { render_for_api :public, :json => @users}
    end
  end
end
