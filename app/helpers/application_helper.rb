module ApplicationHelper
    def logged_in?
        !!session[:user_id]
    end

    def current_user
        @current_user ||= User.find_by_id(session[:user_id])  if !!session[:user_id]
    end


    def current_order
    	if !session[:order_id].nil?
    		Order.find(session[:order_id])
    	else
    		Order.new
    	end
    end
end
