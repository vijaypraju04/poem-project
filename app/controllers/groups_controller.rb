class GroupsController < ApplicationController
before_action :require_logged_in
  def index
    @groups = Group.all
    @group = Group.new
  end

  def new
    @group = Group.new
  end

  def show
    @group = Group.find_by(id: params[:id])
  end

  def create
    @group = Group.new(group_params)
    if @group.valid?
      @group.users << current_user
      @group.save
      # current_user.groups << group_params
      redirect_to groups_path
    else
      render :new
    end
  end

  def update
    @group = Group.find(params[:id])
    if !@group.users.include?(current_user)
      @group.users << current_user
      redirect_to group_path(@group)
    else
      flash[:notice] = "YOU CANT DO THAT"
    end
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end

end
