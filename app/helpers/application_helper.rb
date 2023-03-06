module ApplicationHelper
    def current_user
      if session != nil
      User.find(session[:user_id])  if session[:user_id]
      end
    end

    def logged_in?
        !!current_user
    end


end
