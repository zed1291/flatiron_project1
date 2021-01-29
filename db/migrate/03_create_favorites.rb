class CreateFavorites < ActiveRecord::Migration[6.1]
    
    def change
        create_table :favorites do |t|
            t.references :user, foreign_key: true
            t.references :city, foreign_key: true
            t.string :comment
        end
    end
end 
