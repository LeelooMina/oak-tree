class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    unless table_exists? :replies
    create_table :replies do |t|
      t.references :acorn, null: false, foreign_key: { to_table: :acorns }
      t.references :reply, null: false, foreign_key: { to_table: :acorns}

      t.timestamps
    end
    end
  end
end
