class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.text :description
      t.timestamps null: false

      t.belongs_to :topic, index: true
      t.belongs_to :author, index: true
    end
  end
end
