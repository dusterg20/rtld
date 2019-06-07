class Tag < ActiveRecord::Base
    has_many :tracks, foreign_key: "xytagid"
end
