class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def current_user
        @current_user = @current_user || Legislator.find_by(session_token: session[:session_token]) || Constituent.find_by(session_token: session[:session_token])
    end

    def login(user)
        session[:session_token] = user.session_token
    end

    def logout
        current_user.reset_session_token!
        session[:session_token] = nil
    end

end
