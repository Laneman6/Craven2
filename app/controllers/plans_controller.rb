class PlansController < ApplicationController
  def index
    @plans = current_user.plans
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new

    @plan.user_id = params[:user_id]
    @plan.week_day = params[:week_day]
    @plan.category = params[:category]
    @plan.date = params[:date]

    if @plan.save
      redirect_to :back, :notice => "Click your new plan below to search for and save recipe options."
    else
      redirect_to :back, :notice => "Weekday already taken, please try again."
    end
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])

    @plan.user_id = params[:user_id]
    @plan.week_day = params[:week_day]
    @plan.category = params[:category]
    @plan.date = params[:date]

    if @plan.save
      redirect_to "/plans", :notice => "Plan updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @plan = Plan.find(params[:id])

    @plan.destroy

    redirect_to "/plans", :notice => "Meal plan deleted succesfully."
  end
end
