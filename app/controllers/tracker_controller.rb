class TrackerController < ApplicationController
  def index
    @tracks = Track.find_by_sql('SELECT m.* FROM tracks m LEFT JOIN tracks b ON m.xytagid = b.xytagid AND m.xytimestamp < b.xytimestamp WHERE b.xytimestamp IS NULL')
  end

  def show
    @track = Track.find(params[:id])
  end
end
