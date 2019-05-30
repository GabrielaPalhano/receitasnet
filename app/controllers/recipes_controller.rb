class RecipesController < ApplicationController
def index
    @recipes = Recipe.all
end

def show
    @recipe = Recipe.find(params[:id])
end

def edit
    @recipe = Recipe.find(params[:id])
end


def update
    @recipe=Recipe.find(params[:id])
    recipe_params = params.require(:recipe).permit!

    if @recipe.update(recipe_params)
        redirect_to @recipe, notice: "Receita modificada com sucesso!"
    else
        render :edit
    end

end

def new
    @recipe=Recipe.new
end


def create
    recipe_params = params.require(:recipe).permit!
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
        redirect_to @recipe, notice: "Receita criada com sucesso!"
    else
        render :new
    end
end


def destroy
    @recipe=Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_url, alert:'Receita apagada com sucesso!'
end


end
