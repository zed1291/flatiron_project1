class CreateFavoriteCities < ActiveRecord::Migration[6.1]
    
    def change
        create_table :favorite_cities do |t|
            t.text :city
            t.integer :user_id
        end
    end
end 