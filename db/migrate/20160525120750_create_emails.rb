class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email
      t.timestamps null: false

      t.references :user, index: true
    end
  end
end
