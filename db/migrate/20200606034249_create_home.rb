class CreateHome < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.integer :likes
      t.string :linkedin
      t.string :github
      t.string :email
    end
  end
end
