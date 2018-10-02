class ApplicationController < ActionController::Base

  def index
    @theatre = Theatre.new(params)
  end
  # private
  #   def booking_params
  #     params.require
  #   end
end
