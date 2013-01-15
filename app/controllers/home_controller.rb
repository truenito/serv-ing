class HomeController < ApplicationController
  def index

  end

  def proyectos

  end

  def proyecto
    @project_id = params[:project_id]
    case @project_id
    when "1"
      redirect_to "/pixel"
    when "2"
      redirect_to "/arpel"
    when "3"
      redirect_to "/coolbar"
    when "4"
      redirect_to "/gsport"
    when "5"
      redirect_to "/cruzmorel"
    when "6"
      redirect_to "/cymsupplyparts"
    when "7"
      redirect_to "/escuela"
    when "8"
      redirect_to "/almacen"
    when "9"
      redirect_to "/apartamentos"
    end
  end

  def pixel
  end

  def arpel
  end

  def coolbar
  end

  def gsport
  end

  def cruzmorel
  end

  def cymsupplyparts
  end

  def escuela
  end

  def almacen
  end

  def apartamentos
  end

  def soluciones

  end

  def contacto

  end
  
end
