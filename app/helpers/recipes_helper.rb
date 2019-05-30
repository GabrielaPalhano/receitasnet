module RecipesHelper

    def imagem (recipe)
        if recipe.poster.blank?
            image_tag('noimage.png')
        else
            image_tag(recipe.poster, :width => 200, :height => 200)
        end
    end

end