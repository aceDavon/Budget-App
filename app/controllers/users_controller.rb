class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(id: current_user.id)
  end
end
