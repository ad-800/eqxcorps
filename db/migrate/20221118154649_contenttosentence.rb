class Contenttosentence < ActiveRecord::Migration[7.0]
  def change
    add_column :sentences, :content, :text
  end
end
