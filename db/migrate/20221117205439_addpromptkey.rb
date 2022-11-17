class Addpromptkey < ActiveRecord::Migration[7.0]
  def change
    add_reference :stories, :prompt, foreign_key: true
  end
end
