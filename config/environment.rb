require 'bundler'
Bundler.require

<<<<<<< HEAD
require './app/models/user'

=======
>>>>>>> c17c9cbd7c80469221deef6a141b6b7e9d52f007
configure :development do
  set :database, "sqlite3:db/database.db"
end
