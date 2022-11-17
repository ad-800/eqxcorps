class Addsentencereferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :sentences, :user, foreign_key: true
    add_reference :sentences, :stories, foreign_key: true
  end
end
