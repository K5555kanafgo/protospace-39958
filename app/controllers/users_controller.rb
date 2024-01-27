class UsersController < ApplicationController
  def  create
    @user = User.new(params[:id])
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end
end