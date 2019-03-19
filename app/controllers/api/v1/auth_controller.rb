class Api::V1::AuthController < ApplicationController
  def create
    #byebug
    # authenticate user, return user info
    # or throw error
    user = User.find_by(email: params[:email])
    
    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: {errors: "Whoops!"}
    end
  end
end
