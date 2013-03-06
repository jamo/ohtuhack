class Beer
  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :name,       String    # A varchar type string, for short strings
  property :created_at, DateTime  # A DateTime, for any date you might like.
  belongs_to :brewery
end

class Brewery
  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :name,       String    # A varchar type string, for short strings
  property :created_at, DateTime  # A DateTime, for any date you might like.
  has n, :beers
end

class Pub
  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :name,       String    # A varchar type string, for short strings
  property :created_at, DateTime  # A DateTime, for any date you might like.
end