module RecipesHelper

    def imagem (recipe)
        if recipe.poster.blank?
            image_tag('noimage.png')
        else
            image_tag(recipe.poster, :width => 400, :height => 250)
        end
    end

end