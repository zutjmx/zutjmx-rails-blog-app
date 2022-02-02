class ArticulosController < ApplicationController
  def new
    @texto_boton = "Crear"
    @articulo = Articulo.new
  end

  def index
    @articulos = Articulo.all.order("created_at DESC")
  end

  def create
    @articulo = Articulo.new(articulo_params)
    
    if @articulo.save
      redirect_to @articulo
    else
      render 'new'
    end
    
  end

  def edit
    @texto_boton = "Modificar"
    @articulo = Articulo.find(params[:id])
  end

  def update
    @articulo = Articulo.find(params[:id])
    
    if @articulo.update(articulo_params)
      flash[:notice] = 'Artículo modificado correctamente'
      redirect_to @articulo
    else
      render 'edit'
    end
    
  end

  def show
    @articulo = Articulo.find(params[:id])
  end

  def destroy
    @articulo = Articulo.find(params[:id])
    @articulo.destroy
    redirect_to articulos_path, :notice => "Artículo eliminado correctamente"
  end

  rescue_from ActiveRecord::RecordNotFound do
    flash[:notice] = 'El elemento buscado no existe'
    redirect_to :action => :index
  end

  private
  
  def articulo_params
    params.require(:articulo).permit(:titulo, :contenido, :autor_id)
  end

end
