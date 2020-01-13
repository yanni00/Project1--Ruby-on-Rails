class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.text :name
      t.text :server
      t.text :spec
      t.text :subspec
      t.text :image

      t.timestamps
    end
  end
end
