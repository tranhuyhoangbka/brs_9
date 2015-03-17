class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :followed_id
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :relationships, :users
  end
end
