class Api::V1::UsersController < ApplicationController
  def show
    userId = params.permit(:id)[:id]
    user = User.where(id: userId)
               .select(:id, :fname, :lname, :email)
               .first
    render json: user, status: 200
  end
end
