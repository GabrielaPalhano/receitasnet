module RecipesHelper

    def imagem (recipe)
        if recipe.poster.blank?
            image_tag('noimage.png')
        else
            image_tag(recipe.poster, :width => 150, :height => 150)
        end
    end

end