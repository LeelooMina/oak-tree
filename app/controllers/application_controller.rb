class ApplicationController < ActionController::Base
    def require_user
        if guest? 
            flash[:notice] = "Must be logged in to complete that action"
            redirect_to login_path
        end
    end
def already_signed_in?
    if !guest?
        flash[:notice] = "You are already signed in."
        redirect_to acorns_path
    end
end
    def guest?
        !helpers.logged_in?
    end
end
