class KeysController < ApplicationController
  before_action :authenticate_user! # deviseのメソッドで「ログインしていないユーザーをログイン画面に送る」メソッド
  before_action :key_set, only: [:show, :destroy, :edit, :update]

  def new
    @key = Key.new # 新規投稿用の空のインスタンス
  end

  def create
    @key = Key.new(key_params)  # フォームから送られてきたデータをストロングパラメータを経由して@keyに代入
    @key.user_id = current_user.id # user_idの情報はフォームからはきていないので、deviseのメソッドを使って「ログインしている自分のid」を代入
    @key.save
    redirect_to keys_path
  end

  def index
     @keys = Key.where(user_id: current_user.id)
  end

  def show

  end

  def destroy
    @key.destroy
    redirect_to  keys_path
  end

  def edit
  end

  def update
    #編集データの取得
    if @key.update(key_params)
      #updateが完了したら一覧ページへリダイレクト
      redirect_to  keys_path(params[:id])
    else
      #updateを失敗すると編集ページへ
      render 'edit'
    end
  end


  private
    def key_params
      params.require(:key).permit(:site_name, :account_id, :account_key) # keyモデルのカラムのみを許可
    end

    def key_set
      @key = Key.find(params[:id])
    end

end
