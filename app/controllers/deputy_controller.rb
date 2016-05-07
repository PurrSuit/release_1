class DeputyController < ApplicationController

  def all
    render json: Deputy.all
  end

  def show
    deputy_id = params[:id]
    selected_deputies = Deputy.where(id: deputy_id)
    deputy = nil
    if (selected_deputies.length > 0)
      deputy = selected_deputies.first
    else
      raise "error"
    end
    render json:deputy
  end

  def create
    new_deputy = Deputy.new(get_params)
    deputy_saved = new_deputy.save
      if deputy_saved
        render json: deputy
      else
        raise "error"
      end
  end

  def update
    deputy_id = params[:id]
    deputies = Deputy.where(id: deputy_id)
    deputy = deputies.first
    deputy.update(get_params)
    render json: deputy
  end

  def delete
    deputy_id = params[:id]
    deputies = Deputy.where(id: deputy_id)
    deputy = deputy.first
    deputy.destroy
      redirect_to :deputies_all
  end

  private
  def get_params
        params.require(:deputy).permit(:name,:gender,:email,:age,:registration,:legislation_situation)
  end
end
