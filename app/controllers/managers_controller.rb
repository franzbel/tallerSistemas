class ManagersController < ApplicationController
  def index
  end
  def cuentas
    @users = User.all
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



end
