class CreateApps < ActiveRecord::Migration[6.0]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :icon
      t.string :shortDesc
      t.text :description
      t.string :images
    end
  end
end
