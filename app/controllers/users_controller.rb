class UsersController < ApplicationController
  before_action :requires_login, only: [:index, :show, :recipe_lists]

  def index
    render json: User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  def create
    @user = User.new

    @user.username = params[:username]
    @user.password = params[:password]

    if (@user.save)
      render json: {
        username: @user.username,
        id: @user.id,
        token: get_token(payload(@user.username, @user.id))
      }
    else
      render json: {
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def recipe_lists
    # @user = User.find_by(id: params[:id])
    # render json: @user.recipes
    id = decoded_token[0]['id']

    @user = User.find_by(id: id)
    render json: @user.recipes
  end

end
