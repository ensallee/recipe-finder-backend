class RecipeListsController < ApplicationController
  before_action :requires_login, only: [:save]

  def save
    id = decoded_token[0]['id']

    @user = User.find_by(id: id)
    @recipe = Recipe.create(recipe_params)

    if (@user && @recipe)
      @user.recipes << @recipe
      render json: {
        message: "saved"
      }, status: :ok
    else
      render json: {
        message: "not saved"
      }, status: :unauthorized
    end

  end

  private
    def recipe_params
      params.require(:recipe).permit(:label, :source, :url, :image, :ingredients)
    end

end
