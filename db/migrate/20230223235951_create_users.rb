class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    unless table_exists? :users
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :profile_img, default: 'profile_photo.jpg'
      t.string :cover_img
      t.string :bio

      t.timestamps
    end
    end
  end
end
