class StoryAuthor < ApplicationRecord
  belongs_to :story, foreign_key: 'stories_id', class_name: 'Story'
  belongs_to :user
end
