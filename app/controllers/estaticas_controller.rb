class EstaticasController < ApplicationController
  def contacto
  end

  def nosotros
    @mensaje = "Hola desde el controller"
    @usuarios = ['Jesús', 'Ana', 'Yesmeli']
  end
end
