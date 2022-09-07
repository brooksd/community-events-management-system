class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :image_url
      t.text :event_description
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
