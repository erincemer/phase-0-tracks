
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
display(db)

def delete_beer(db, name)
  db.execute("DELETE from beer_menu WHERE name=?",[name])
  display(db)
end

#delete_beer(db, "Duvel")

#create a method that updates the menu depending on what the user wants to update
def update_menu(db)

  puts"--------------"

  loop do
    puts"What would you like to update in the beer menu? Choose between name, style, alcohol or price."
    input = gets.chomp
    if input == "done"
      display(db)
      break
    elsif input =="name"

      puts"Which beer name you would like to edit?"
      name_to_edit=gets.chomp
      puts"What should be the correct beer name?"
      name=gets.chomp
      db.execute("UPDATE beer_menu SET name=? WHERE name=?",[name, name_to_edit])
      display(db)
    elsif input=="style"
      puts"Which beer you would like to edit?"
      name=gets.chomp
      puts"What should be the correct style?"
      style=gets.chomp
      db.execute("UPDATE beer_menu SET style=? WHERE name=?",[style, name])
      display(db)
    elsif input=="alcohol"
      puts"Which beer you would like to edit?"
      name=gets.chomp
      input=="alcohol"
      puts"What should be the correct alcohol percentage?"
      alcohol=gets.chomp
      db.execute("UPDATE beer_menu SET alcohol=? WHERE name=?",[alcohol, name])
      display(db)
    elsif input=="price"
      puts"Which beer you would like to edit?"
      name=gets.chomp
      input=="price"
      puts"What should be the correct price?"
      price=gets.chomp
      db.execute("UPDATE beer_menu SET price=? WHERE name=?",[price, name])
      display(db)
    else
      puts "Please type correct input."

    end

  end
end
update_menu(db)

#create a method that add(INSERT) a new beer to the menu.
def add_beer(db, name, style, alcohol, price)
  db.execute("INSERT INTO beer_menu(name, style, alcohol, price) VALUES(?, ?, ?, ?)", [name, style, alcohol, price])
  display(db)
end
#add_beer(db, "Efes", "Malt", "4.1%", 6)
