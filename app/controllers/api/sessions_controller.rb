class Api::SessionsController < ApplicationController

  def create
    @user = Legislator.find_by_name(params[:legislator][:name]) || Constituent.find_by_name(params[:legislator][:name])

    if @user
      render "api/users/show"
    else
      render json: ["Invalid login info"], status: 401
    end
  end

  def destroy
    if !current_user
        render json: {}, status: 404
    else
        logout
        render json: {}
    end
  end

end