class Api::SessionsController < ApplicationController

  def create
    @legislator = Legislator.find_by_credentials(params[:user][:name])
    @constituent =  Constituent.find_by_credentials(params[:user][:name])
    debugger

    if @legislator
      login(@legislator)
      render "api/legislators/show"
    elsif @constituent
      login(@constituent)
      render "api/constituents/show"
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