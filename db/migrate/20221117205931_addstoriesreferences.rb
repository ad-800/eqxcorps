class Addstoriesreferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :storyauthors, :user, foreign_key: true
    add_reference :storyauthors, :stories, foreign_key: true
  end
end
