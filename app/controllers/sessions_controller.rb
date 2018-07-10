class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params["username"])

    # payload = {name: params["username"], id: @user.id}

    # token = JWT.encode payload, nil, 'none'
    #
    # puts token
    byebug
    if (@user && @user.authenticate(params["password"]))
    # if (@user && valid_token?)
      render json: {
        username: @user.username,
        id: @user.id,
        token:  get_token(payload(@user.username, @user.id))
      }
    else
      render json: {
        errors: "Those credentials don't match anything we have in our database."
      }, status: :unauthorized
    end
  end

end
