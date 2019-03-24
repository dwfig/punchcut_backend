class Api::V1::AuthController < ApplicationController
  def create
    # authenticate user, return user info
    # or throw error
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = encode_token(user.id)
      render json: {user: user, jwt: jwt}
    else
      render json: {errors: "Whoops!"}
    end
  end

  def auto_login
    if logged_in
      render json: curr_user
    else
      render json: {errors: "No way!"}
    end
  end

end
