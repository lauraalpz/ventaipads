class ReporteController < ApplicationController
  def index
  	@ventaipads = Ventaipad.all
  	@ventaipadsprecio = @ventaipads.sort_by(&:precio)
  	@ventaipadsmodelo = @ventaipads.sort_by(&:modelo)
  	@ventaipadscolor = @ventaipads.sort_by(&:color)
  	@ventaipadscantidad = @ventaipads.sort_by(&:cantidad)
  	@ventaipadsmemoria = @ventaipads.sort_by(&:memoria)

  end
end
