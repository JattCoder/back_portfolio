class CreateAbout < ActiveRecord::Migration[6.0]
  def change
    create_table :abouts do |t|
      t.string :name
      t.text :description
    end
  end
end
