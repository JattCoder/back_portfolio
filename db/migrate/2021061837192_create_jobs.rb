class CreateJobs < ActiveRecord::Migration[6.0]
    def change
        create_table :jobs do |i|
            i.string :name
            i.string :icon
            i.string :title
            i.string :responsibility
        end
    end
end