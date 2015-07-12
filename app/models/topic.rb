class Topic < ActiveRecord::Base
	belongs_to :parent, :class_name => "Topic"
	has_many :topics, :foreign_key => "parent_id"
end
