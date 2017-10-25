class PoemsController < ApplicationController
  before_action :require_logged_in, only: [:new, :create]
  def index
    @poems = Poem.all
    if params[:search]
      @poems = Poem.search(params[:search])
    else
      @poems = Poem.all
    end
  end

  def show
    @poem = Poem.find_by(id: params[:id])
  end

  def new
    @poem = Poem.new
    @groups = Group.all
  end

  def create
    @poem = Poem.new(poem_params)
    if @poem.save
      redirect_to poem_path(@poem)
    else
      render :new
    end
  end

  def edit
    @poem = Poem.find_by(id: params[:id])
  end

  def update
    @poem = Poem.find_by(id: params[:id])
    if @poem.update(poem_params)
      redirect_to poem_path(@poem)
    else
      render :edit
    end
  end

  def destroy
    @poem = Poem.find_by(id: params[:id])
    @poem.destroy
    redirect_to poems_path
  end

  private

  def poem_params
    params.require(:poem).permit(:title, :content, :group_id)
  end
end
