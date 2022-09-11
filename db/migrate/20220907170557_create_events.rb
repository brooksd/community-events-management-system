class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :address
      t.text :description
      t.string :image
      t.boolean :isFavorite
      t.string :title
      t.string :user_id
    end
  end
end
