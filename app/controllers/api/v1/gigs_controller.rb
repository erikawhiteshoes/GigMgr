class Api::V1::GigsController < ApplicationController
  def index
    render json: Gig.all,
      include: [
        :location,
        :fees
      ]
  end
end
