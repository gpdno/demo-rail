class PrioritiesController < ApplicationController
  before_action :set_priority, only: [:show, :edit, :update, :destroy]

  def index
    @priorities = Priority.all
  end

  def show
  end

  def new
    @priority = Priority.new
  end

  def edit
  end

  def create
    @priority = Priority.new(priority_params)

    respond_to do |format|
      if @priority.save
        format.html { redirect_to @priority, notice: 'Priority was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @priority.update(priority_params)
        format.html { redirect_to @priority, notice: 'Priority was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @priority.destroy
    respond_to do |format|
      format.html { redirect_to priorities_url, notice: 'Priority was successfully destroyed.' }
    end
  end

  private

    def set_priority
      @priority = Priority.find(params[:id])
    end

    def priority_params
      params.require(:priority).permit(:order)
    end
end
