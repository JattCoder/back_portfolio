class CreateLanguages < ActiveRecord::Migration[6.0]
    def change
        create_table :languages do |l|
            l.string :name
            l.string :img
        end
    end
end