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

CSV.foreach('users.csv', {col_sep:';'}) do |user|
  puts create_insert_user(user_hash(user))
end
