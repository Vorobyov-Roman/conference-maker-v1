class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.text :body
      t.timestamps null: false

      t.references :author, index: true
      t.references :reviewer, index: true
      t.references :topic, index: true
    end
  end
end
