class CreateUsers < ActiveRecord::Migration[5.2]
    # def up
    # end
  
    # def down
    # end
    
    def change
        create_table :users do |t|
            t.string :username
            t.string :password
            t.timestamps
        end
    end
end 