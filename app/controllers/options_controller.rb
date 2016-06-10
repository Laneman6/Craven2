class OptionsController < ApplicationController
  def index
    @options = Option.all
  end

  def show
    @option = Option.find(params[:id])
  end

  def new
    @option = Option.new
  end

  def create
    @option = Option.new
    @option.plan_id = params[:plan_id]
    @option.title = params[:title]
    @option.description = params[:description]
    @option.recipe = params[:recipe]
    @option.image = params[:image]
    @option.source_link = params[:source_link]
    @option.difficulty = params[:difficulty]

    if @option.save
      redirect_to :back, :notice => "Recipe added to meal plan!"
    else
      redirect_to :back, :notice => "You must first create a meal plan in order to save recipes. Please visit the 'My Meal Plans' page to get started."
    end
  end

  def edit
    @option = Option.find(params[:id])
  end

  def update
    @option = Option.find(params[:id])

    @option.plan_id = params[:plan_id]
    @option.title = params[:title]
    @option.description = params[:description]
    @option.recipe = params[:recipe]
    @option.image = params[:image]
    @option.source_link = params[:source_link]
    @option.difficulty = params[:difficulty]

    if @option.save
      redirect_to "/options", :notice => "Option updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @option = Option.find(params[:id])

    if
      @option.destroy
      redirect_to :back, :notice => "Recipe deleted."
    else
      redirect_to "/plans"
    end
  end
end
