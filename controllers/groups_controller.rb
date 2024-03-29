class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end
 
  def show
    @group = Group.find(params[:id])
@groups = Group.all
@groupmembers = Groupmember.all
  end

  def new
    @group = Group.new
@groups = Group.all
  end

def edit
    @group = Group.find(params[:id])
@groups = Group.all
  end

def create
  @group = Group.new(group_params)
  @group.save 
redirect_to @group
end

def update
    @group = Group.find(params[:id])
 
    if @group.update(article_params)
      redirect_to @group
    else
      render 'edit'
    end
  end
 
  def destroy
    @group = Group.find(params[:id])
    @group.destroy
 
    redirect_to groups_path
  end

 
private
  def group_params
    params.require(:group).permit(:name, :project_description, :member_id, :member_id1, :member_id2, :member_id3, :member_id4, :member_id5)
  end 
end
