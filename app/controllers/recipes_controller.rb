class RecipesController < ApplicationController
  before_action :require_editor, only: [:edit, :update]
  before_action :require_admin, only: [:destroy]

  def new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash.now[:notice] = "Dodano nowy przepis"
      redirect_to cuisine_url(@recipe.cuisine_id)

    else
      flash.now[:error] = "Nie mozna wyslac wiadomosci"
      redirect_to :back
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_url
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instructions, :cuisine_id, :image)
  end

end
