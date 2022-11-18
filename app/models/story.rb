class Story < ApplicationRecord
  belongs_to :prompt
  has_many :storyauthors
  has_many :sentences
  has_many :users, through: :sentences
end
