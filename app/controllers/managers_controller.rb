class ManagersController < ApplicationController
   skip_before_filter :verify_authenticity_token


  def index
  end

def asignar
  @user=User.find(params[:id])

#  redirect_to '/asignar'
end

 def destroy
    @user=User.find(params[:id])
    @user.destroy
    redirect_to :back
  end


  def cuentas
    @users = User.all
        if current_user.role == 'admin'
     
     if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all  
    end
   else
    redirect_to '/cuentas'
   end
  end

  def role_admi
    @user=User.find(params[:id])
    @user.role = 'admin'
    @user.save
    redirect_to :back
  end

  def role_asistente
    @user=User.find(params[:id])
    @user.role = 'asistente'
    @user.save
    redirect_to :back
  end

  def role_barman
    @user=User.find(params[:id])
    @user.role = 'barman'
    @user.save
    redirect_to :back
  end

  def role_mesero
    @user=User.find(params[:id])
    @user.role = 'mesero'
    @user.save
    redirect_to :back
  end

def role_chef
    @user=User.find(params[:id])
    @user.role = 'chef'
    @user.save
    redirect_to :back
  end

  def buscar_cuentas
    if current_user.role == 'admin'
     
     if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all  
    end
   else
    redirect_to '/cuentas'
   end
  end



  def save
      @users=User.all
      @user=User.new
      @user.email=params[:email]
      @user.password=params[:password]
      @user.role=params[:role]
      @user.name = params[:name]
      @users.each do |user|
       if @user.email == user.email
        create_user
       end
      end
      @user.save
      redirect_to '/cuentas'
  end

  def edit_user
    @user=User.find(params[:id])
  end

    def show_user
    @user=User.find(params[:id])
  end

  def create_user
    @user=User.new
  end



end
