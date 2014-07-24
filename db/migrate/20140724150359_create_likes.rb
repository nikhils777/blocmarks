class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :yes
      t.references :user, index: true
      t.references :blocmark, index: true

      t.timestamps
    end
  end
end
