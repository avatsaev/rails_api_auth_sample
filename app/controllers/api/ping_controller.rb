class Api::PingController < ApplicationController

  def index
    render json: {
        status: :ok
    }
  end
end
