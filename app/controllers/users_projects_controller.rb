class UsersProjectsController < ApplicationController
	  before_action :set_user, only: [:create, :destroy]
	def create
		@user.projects << Project.new(name: params[:name])
		@user.save
		redirect_to users_path
	end

	def destroy
		project = Project.find(params[:id])
		@user.projects.delete(project)
		redirect_to users_path
	end

	private
	def set_user
      @user = User.find(params[:user_id])
    end
end