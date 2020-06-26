class CreateApps < ActiveRecord::Migration[6.0]
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.string :source
      t.string :live
    end
  end
end
