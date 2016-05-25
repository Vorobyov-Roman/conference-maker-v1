class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.timestamps null: false

      t.references :profile, index: true
      t.references :conference, index: true
    end
  end
end
