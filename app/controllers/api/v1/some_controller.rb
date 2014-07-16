class Api::V1::SomeController < ApplicationController

  swagger_controller :some, "Some"

  swagger_api :index do
    summary "Fetches all Room items"
    param :query, :page, :integer, :optional, "Page number"
    response :unauthorized
    response :not_acceptable
    response :requested_range_not_satisfiable # paging error
  end

  def index
  end

end