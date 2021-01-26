class CreateUsers < ActiveRecord::Migration[4.2]
    # def up
    # end
  
    # def down
    # end
    
    def change
        create_table :users do |user|
            user.string :username
        end
    end
end 