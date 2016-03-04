class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def list
    @creatures = Creature.all
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def create
    Creature.create creatures_params
    redirect_to creatures_list_path
  end

  private
  def creatures_params
    params.require(:creature).permit(:name, :description)
  end
end
