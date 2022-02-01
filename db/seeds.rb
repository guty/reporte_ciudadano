users = User.find_or_create_by(email: 'admin@mail.com') do |u|
  u.password = 'admin1234'
  u.role = :admin
end

dependencies = ['Alumbrado público', 'Parques y jardínes', 'Limpia y sanidad']

dependencies.each do |name|
  Dependency.find_or_create_by(name:) do |dep|
    dep.active = true
  end
end

categories = %W[Baches Basura Jard\u00EDnes Limpieza Luminarias]

categories.each do |name|
  Category.find_or_create_by(name:) do |cat|
    cat.active = true
    cat.dependency_id = Dependency.last.id
  end
end
