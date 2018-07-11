class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :label
      t.string :source
      t.string :url
      t.string :image
      t.text :ingredients

      t.timestamps
    end
  end
end
