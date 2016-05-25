class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :description
      t.timestamps null: false

      t.belongs_to :conference, index: true
    end
  end
end
