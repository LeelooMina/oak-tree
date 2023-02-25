class CreateAcornHashtags < ActiveRecord::Migration[7.0]
  def change
    unless table_exists? :acorn_hashtags
    create_table :acorn_hashtags do |t|
      t.references :acorn, null: false, foreign_key: true
      t.references :hastag, null: false, foreign_key: true

      t.timestamps
    end
  end
  end
end
