class Story < ApplicationRecord
  belongs_to :prompt
  has_many :story_authors
  has_many :sentences
  has_one :storyroom
  has_many :users, through: :sentences
end
