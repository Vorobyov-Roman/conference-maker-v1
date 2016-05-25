class CreateReviewers < ActiveRecord::Migration
  def change
    create_table :reviewers do |t|
      t.timestamps null: false

      t.references :profile, index: true
      t.references :topic, index: true
    end
  end
end
