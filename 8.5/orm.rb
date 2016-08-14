
# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("beer_menu.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS beer_menu(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    style VARCHAR(255),
    alcohol VARCHAR(255),
    price INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")


#Add beers to the bar's beer menu
def create_beer(db, name, style, alcohol, price)
  db.execute("INSERT INTO beer_menu (name, style, alcohol, price) VALUES (?, ?, ?, ?)", [name, style, alcohol, price])
end

#10.times do
#  create_beer(db, Faker::Beer.name, Faker::Beer.style, Faker::Beer.alcohol, Faker::Number.between(6,9) )
#end

# explore ORM by retrieving data

def display(db)
  puts"-------------"
  beers = db.execute("SELECT * FROM beer_menu")

  beers.each do |beer|
    puts"-#{beer["name"]}, a #{beer["style"]}, contains #{beer["alcohol"]} alcohol and will be sold for #{beer["price"]}$."
  end
  puts"-------------"
end
#display(db)

def delete(db, name)
  db.execute("DELETE from beer_menu WHERE name=?",[name])
  display(db)
end

delete(db, "Duvel")

def update_menu(db)

  puts"--------------"
  puts"What would you like to update in the beer menu?"
  input = gets.chomp
  loop do
    if input == "done"
      display(db)
      break
    elsif input =="name"
      puts"Which beer name you would like to edit?"
      name_to_edit=gets.chomp
      #puts"What should be the correct beer name?"
      #beer=gets.chomp
      db.execute("UPDATE beer_menu SET name='tuborg' where name='name_to_edit'")
      display(db)
      break
    else

    end

  end
end
#update_menu(db)
