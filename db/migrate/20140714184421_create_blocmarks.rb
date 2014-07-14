class CreateBlocmarks < ActiveRecord::Migration
  def change
    create_table :blocmarks do |t|
      t.string :url
      t.references :user, index: true
      t.references :topic, index: true

      t.timestamps
    end
  end
end
