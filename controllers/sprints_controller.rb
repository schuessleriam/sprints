class SprintsController < ApplicationController

def create
    @group = Group.find(params[:group_id])
    @sprint = @group.sprints.create(sprint_params)
 redirect_to group_path(@group)  
end

def destroy
    @group = Group.find(params[:group_id])
    @sprint = @group.sprints.find(params[:id])
    @sprint.destroy
    redirect_to group_path(@group)
  end
 
  private
    def sprint_params
      params.require(:sprint).permit(:sprint_info)
    end
end

