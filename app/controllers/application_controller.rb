class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def current_legislator
        @current_legislator ||= Legislator.find_by_name(:name)
    end

end
