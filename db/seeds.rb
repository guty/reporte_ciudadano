users = User.find_or_create_by(email: 'admin@mail.com') do |u|
  u.password = 'admin1234'
  u.role = :admin
end
