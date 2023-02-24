class CreateAcornHashtags < ActiveRecord::Migration[7.0]
  def change
    create_table :acorn_hashtags do |t|
      t.references :acorn, null: false, foreign_key: true
      t.references :hastag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
