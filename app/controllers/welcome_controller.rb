class WelcomeController < ApplicationController
  def index
  		if user_signed_in? && current_user.role == 'chef'
     	 redirect_to '/distributor_chef'
        end
        if user_signed_in? && current_user.role == 'mesero'
     	 redirect_to '/waiters/index'
        end
        if user_signed_in? && current_user.role == 'barman'
     	 redirect_to '/distributor_barman'
        end
        if user_signed_in? && current_user.role == 'asistente'
     	 redirect_to '/helpers/index'
        end
        if user_signed_in? && current_user.role == 'admin'
     	 redirect_to '/managers/index'
        end
  end
  def mostrar_menu
  end
  def contacto
      
  end

end
