class Createstoryauthors < ActiveRecord::Migration[7.0]
  def change
    create_table :storyauthors do |t|
      t.timestamps
    end
  end
end
