class CreateAcorns < ActiveRecord::Migration[7.0]
  def change
    create_table :acorns do |t|
      t.string :content
      t.date :date_created
      t.string :img
      t.string :link
      t.boolean :reply
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
