class Admin::ComidasController < AdminController
  def index
    @comidas=Comida.all
  end
  def new
  end
  def create
    Comida.create(comida_params)
    redirect_to admin_comidas_path
  end
  def edit
    @comida=Comida.find(params[:id])
  end
  def delete
  end
  def update
    Comida.find(params[:id]).update(comida_params)
    redirect_to admin_comidas_path
  end
  def destroy
    Comida.find(params[:id]).destroy
    redirect_to admin_comidas_path
  end 
  private
  def comida_params
    params.require(:comida).permit(:nombre, :peso, :hidratosxracion, :raciones, :ingredientes)
  end
end
