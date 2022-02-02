class EstaticasController < ApplicationController
  
  #layout 'custom'

  def contacto
    @id = params[:id]
    @user_id = params[:user_id]
  end

  def nosotros
    @mensaje = "Hola desde el controller"
    @usuarios = ['Jesús', 'Ana', 'Yesmeli']
  end
end
