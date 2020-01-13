class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.text :name
      t.text :server
      t.text :class
      t.text :subclass
      t.text :image

      t.timestamps
    end
  end
end
