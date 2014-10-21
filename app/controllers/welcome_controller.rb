class WelcomeController < ApplicationController
  def index
  		if user_signed_in? && current_user.email == 'chef@gmail.com'
     	 redirect_to '/chefs/index'
        end
        if user_signed_in? && current_user.email == 'mesero@gmail.com'
     	 redirect_to '/waiters/index'
        end
        if user_signed_in? && current_user.email == 'barman@gmail.com'
     	 redirect_to '/bartenders/index'
        end
        if user_signed_in? && current_user.email == 'ayudante@gmail.com'
     	 redirect_to '/helpers/index'
        end
        if user_signed_in? && current_user.email == 'admin@gmail.com'
     	 redirect_to '/managers/index'
        end
  end

end
