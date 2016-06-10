require 'open-uri'

class FoodsController < ApplicationController
def ingredient_form

@plans = current_user.plans

  render("ingredient_form.html.erb")

end

  def ingredient_link
    @first_ingredient = params[:first_ingredient]
    @second_ingredient = params[:second_ingredient]
    @third_ingredient = params[:third_ingredient]
    @fourth_ingredient = params[:fourth_ingredient]
    @meal_category = params[:meal_category]

    url_safe_first_ingredient = URI.encode(@first_ingredient)
    url_safe_second_ingredient = URI.encode(@second_ingredient)
    url_safe_third_ingredient = URI.encode(@third_ingredient)
    url_safe_fourth_ingredient = URI.encode(@fourth_ingredient)
    url_safe_meal_category = URI.encode(@meal_category)

url = "http://www.recipepuppy.com/api/?i=" + url_safe_first_ingredient + "," + url_safe_second_ingredient + "," + url_safe_third_ingredient + "," + url_safe_fourth_ingredient + "&q=" + url_safe_meal_category

parsed_data = JSON.parse(open(url).read)

@title_one = parsed_data["results"][0]["title"]
@title_two = parsed_data["results"][4]["title"]
@title_three = parsed_data["results"][8]["title"]
@title_four = parsed_data["results"][2]["title"]
@title_five = parsed_data["results"][1]["title"]

@list_one = parsed_data["results"][0]["ingredients"]
@list_two = parsed_data["results"][4]["ingredients"]
@list_three = parsed_data["results"][8]["ingredients"]
@list_four = parsed_data["results"][2]["ingredients"]
@list_five = parsed_data["results"][1]["ingredients"]

@recipe_one = parsed_data["results"][0]["href"]
@recipe_two = parsed_data["results"][4]["href"]
@recipe_three = parsed_data["results"][8]["href"]
@recipe_four = parsed_data["results"][2]["href"]
@recipe_five = parsed_data["results"][1]["href"]








    render("testing.html.erb")

  end
end
