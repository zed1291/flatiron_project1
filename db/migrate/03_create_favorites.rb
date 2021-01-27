class CreateFavorites < ActiveRecord::Migration[6.1]
    
    def change
        create_table :favorites do |t|
            t.references :city, foreign_key: true
            t.references :user, foreign_key: true
        end
    end
end 
