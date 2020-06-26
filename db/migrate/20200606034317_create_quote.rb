class CreateQuote < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.string :quote
    end
  end
end
