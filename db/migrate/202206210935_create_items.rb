class CreateItems < ActiveRecord::Migration[6.0]
    def change
        create_table :items do |i|
            i.string :barcode
            i.string :name
            i.string :size
            i.string :pack
            i.integer :inStock
            i.string :price
            i.string :cost
            i.boolean :tax
            i.string :type
            i.string :deals
            i.string :description
        end
    end
end