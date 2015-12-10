json.users @users do |user|
  json.name      user.name
  json.last_name user.last_name
  json.city      user.city
end
