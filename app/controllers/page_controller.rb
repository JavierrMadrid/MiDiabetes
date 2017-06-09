class PageController < ApplicationController
  def index
  end
  def aboutMe
  end
  def services
  end
  def contact
  end
  def dbAdmin
    @comidas=Comida.all
  end
 end
