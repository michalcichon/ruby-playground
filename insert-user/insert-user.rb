require 'csv'
require 'digest'

def user_hash(user)
  return {
    firstname: user[0],
    lastname: user[1],
    email: user[2],
    password: user[3]
  }
end

def create_insert_user(user)
  password_md5 = Digest::MD5.hexdigest(user[:password])
  return "INSERT INTO users (firstname, surname, email, password) VALUES ('#{user[:firstname]}', '#{user[:lastname]}', '#{user[:email]}', '#{password_md5}');"
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

sql_stms = Array.new

CSV.foreach(filename, {col_sep:';'}) do |user|
  sql_stms.push create_insert_user(user_hash(user))
end

File.open(filename+".sql", "w+") do |f|
  f.puts(sql_stms)
end
