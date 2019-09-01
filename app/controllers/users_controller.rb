class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def index
  end

  def show
    @user = User.find(params[:id])
    @keys = @user.keys
  end

end
