class TrackerController < ApplicationController
  def index
    #chh test
    @tags_with_tracking_events = {}
    tags = Tag.all
    tags.each do |tag|
	    tracking_events = Track.where(xytagid: tag.key_id).order('xytimestamp DESC').limit(5)
      @tags_with_tracking_events[tag.key_id] = tracking_events.to_a
    end    
#    @tracks = Track.find_by_sql('SELECT m.* FROM tracks m LEFT JOIN tracks b ON m.xytagid = b.xytagid AND m.xytimestamp < b.xytimestamp WHERE b.xytimestamp IS NULL')
  end

  def show
    @track = Track.find(params[:id])
  end
end
