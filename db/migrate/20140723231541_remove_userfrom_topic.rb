class RemoveUserfromTopic < ActiveRecord::Migration
  def change
    remove_column :topics, :user_id
  end
end
