class MembersController < ApplicationController


def create
    @group = Group.find(params[:group_id])
    @member = @group.members.create(member_params)
 redirect_to group_path(@group)
end

  private
    def member_params
      params.require(:member).permit(:mem)
    end
end


