class User
    attr_accessor :username
    attr_reader :id

    def initialize(username, id=nil)
        @id = id
        @username = username
    end 

    def self.create_table
        sql = <<-SQL
            CREATE TABLE IF NOT EXITSTS users (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                username TEXT
            );
        SQL
        DB[:conn].execute(sql)
    end

    def save
        sql <<-SQL
            INSERT INTO users (username)
            VALUES (?)
        SQL
        DB[:conn].execute(sql, self.name)
    end

    def self.create(username:)
        user = User.new(username)
        user.save
    end

    def self.all
        sql = "SELECT * FROM users"
        DB[:conn].execute(sql)
    end

end





end