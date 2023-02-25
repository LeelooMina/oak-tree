class CreateHashtags < ActiveRecord::Migration[7.0]
  def change
    unless table_exists? :hashtags
    create_table :hashtags do |t|
      t.string :name

      t.timestamps
    end
  end
  end
end
