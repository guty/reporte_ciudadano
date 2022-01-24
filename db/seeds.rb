users = User.find_or_create_by(email: 'admin@mail.com') do |u|
  u.password = 'admin1234'
  u.role = :admin
end

Category.destroy_all

Category.create!([{
                   name: 'Baches',
                   active: true
                 },
                  {
                    name: 'Alumbrado público',
                    active: true
                  },
                  {
                    name: 'Parques y jardínes',
                    active: true
                  }])
