class Plan < ActiveRecord::Base

  validates :week_day, :presence => true, :uniqueness => { :scope => :user_id }

  belongs_to :user
  has_many :options

end
