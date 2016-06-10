class Option < ActiveRecord::Base

validates :plan_id, :presence => true
validates :title, :presence => true
validates :source_link, :presence => true
validates :description, :presence => true


belongs_to :plan

end
