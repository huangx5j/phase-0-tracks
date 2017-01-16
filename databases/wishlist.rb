# require gems
require 'sqlite3'
require 'faker'


# create SQLite3 database
db = SQLite3::Database.new("wishlist.db")
db.results_as_hash = true


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS wishlist(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255)
  )
SQL
db.execute(create_table_cmd)


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS item(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL
db.execute(create_table_cmd)

def create_location(db, name, location)
  db.execute("INSERT INTO wishlist (name, location) VALUES (?, ?)", [name, location])
end

5.times do
  create_location(db, Faker::Name.name, 0)
end


def add_item(db, name, id)
	db.execute("INSERT INTO wishlist (name, id) VALUES (?, ?)", [name, id])

wishlists = db.execute("SELECT * FROM wishlist")
wishlist.each do |wish|
  puts "#{wishlist['name']} is #{wishlist['location']}"
 end

items = db.execute("SELECT * FROM item")
items.each do |item|
  puts "#{item['name']} is #{item['id']}"
 end