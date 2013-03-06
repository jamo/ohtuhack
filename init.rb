require 'data_mapper'
require 'pry'
require 'dm-migrations'


# If you want the logs displayed you have to do this before the call to setup
  DataMapper::Logger.new($stdout, :debug)

  # An in-memory Sqlite3 connection:
  DataMapper.setup(:default, 'sqlite::memory:')

  ## A Sqlite3 connection to a persistent database for use in future
  #DataMapper.setup(:default, 'sqlite:///path/to/project.db')

#a require hell
Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }
DataMapper.auto_migrate!

#now db should be ok?
binding.pry