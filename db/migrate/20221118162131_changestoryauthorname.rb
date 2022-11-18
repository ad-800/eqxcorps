class Changestoryauthorname < ActiveRecord::Migration[7.0]
  def change
    rename_table :storyauthors, :story_authors
  end
end
