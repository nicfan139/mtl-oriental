class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # authorize @user
    # @is_current_user = @user == current_user
    @admin = current_user.admin
  end
end
