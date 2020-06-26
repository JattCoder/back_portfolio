class CreateReviews < ActiveRecord::Migration[6.0]
    def change
        create_table :reviews do |r|
            r.string :review
        end
    end
end