require 'csv'

def user_hash(user)
  return {
    firstname: user[0],
    lastname: user[1],
    email: user[2],
    password: user[3]
  }
end

def create_insert_user(user)
  return "INSERT INTO users (firstname, surname, email, password) VALUES ('#{user[:firstname]}', '#{user[:lastname]}', '#{user[:email]}', '#{user[:password]}')"
end

if ARGV.empty?
  puts 'Usage: ruby insert-ruby.rb filename';
  exit
end

filename = ARGV[0]

unless File.exist?(filename)
  puts "File #{filename} is not exist."
  exit
end

CSV.foreach(filename, {col_sep:';'}) do |user|
  puts create_insert_user(user_hash(user))
end
