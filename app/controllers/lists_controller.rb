class ListsController < ApplicationController
  def new
    @list = List.new

    render :form
  end

  def create
    @list = List.new

    if @list.update_attributes(list_attributes)
      flash[:notice] = "Saved!"

      redirect_to edit_list_path(@list)
    else
      render :form
    end
  end

  def edit
    @list = List.find(params[:id])

    render :form
  end

  private

  def list_attributes
    params.require(:list).permit(:id, :name)
  end
end
