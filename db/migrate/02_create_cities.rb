class CreateCities < ActiveRecord::Migration[6.1]
    
    def change
        create_table :favorite_cities do |t|
            t.string :name
            t.references :favorite, foreign_key: true
        end
    end
end 