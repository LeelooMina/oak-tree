class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    unless table_exists? :followers
    create_table :followers do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    end
  end
end
