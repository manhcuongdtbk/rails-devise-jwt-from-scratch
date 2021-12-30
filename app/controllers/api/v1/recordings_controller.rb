class Api::V1::RecordingsController < ApplicationController
  before_action :set_location
  before_action :set_recordings

  def index; end

  private

  def set_location
    @location = Location.find(params[:location_id])
  end

  def set_recordings
    @recordings = @location.recordings
  end
end
