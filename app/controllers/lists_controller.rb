class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @newlist = List.new
  end

  def create
    @newlist = List.new(list_params)
    if @newlist.save
      redirect_to list_path(@newlist)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
