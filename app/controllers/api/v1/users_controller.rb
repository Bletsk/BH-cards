class Api::V1::UsersController < ApplicationController
  def show
    params.permit(:id)
    user = User.where(id: params[:id])
               .select(:id, :fname, :lname, :email)
               .first
    render json: user, status: 200
  end
end
