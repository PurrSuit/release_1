class CabinetController <  ApplicationController
  def all
    render json: Cabinet.all
  end

  def show
    render json: Cabinet.find(params[:id])
  end

  def new
    @cabinet = Cabinet.new
  end

  def create
    @cabinet = Cabinet.new(cabinet_params)
    cabinet_save = @cabinet.save
    if cabinet_save
      redirect_to :cabinet_all
		else
			render 'new'
    end
  end

  def edit
    @cabinet = Cabinet.find(cabinet_params)
    
    render 'edit'
  end

  def update
    @cabinet = Cabinet.find(params[:id])
    cabinet_update = @cabinet.(cabinet_params)
    if cabinet_update
      redirect_to :cabinet_all
    else
      render 'edit'
    end
  end

  def delete
    id_dep = params[:id]
    cabinets = Cabinet.where(id: id_uf)
    cabinet = cabinets.first
    redirect_to :cabinet_all
  end

private
  def cabinet_params
    params.require(:id).permit(:cabinet, :annex)
  end
end
