class Group < ActiveRecord::Base
	has_many :sprints
	has_many :members
end
