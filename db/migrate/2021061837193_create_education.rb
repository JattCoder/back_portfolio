class CreateEducation < ActiveRecord::Migration[6.0]
    def change
        create_table :educations do |l|
            l.string :name
            l.string :icon
            l.string :description
        end
    end
end