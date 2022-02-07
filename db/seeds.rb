dependencies = ['Alumbrado público', 'Limpia y sanidad', 'Obras públicas', 'Parques y jardínes', 'Tránsito y vialidad']

dependencies.each do |name|
  Dependency.find_or_create_by(name:) do |dep|
    dep.active = true
  end
end

categories = %W[Baches Basura Jard\u00EDnes Limpieza Luminarias Vialidad]

categories.each do |name|
  Category.find_or_create_by(name:) do |cat|
    cat.active = true
    cat.dependency_id = Dependency.last.id
  end
end

User.find_or_create_by(email: 'admin@mail.com') do |u|
  u.password = 'admin1234'
  u.role = :admin
  u.name = 'Admin'
  u.middle_name = 'Administrador'
end

User.find_or_create_by(email: 'director1@mail.com') do |u|
  u.password = 'director1234'
  u.role = :director
  u.dependency_id = Dependency.first.id
  u.name = 'Laura'
  u.middle_name = 'Directora'
  u.last_name = 'Alumbrado'
end

User.find_or_create_by(email: 'director2@mail.com') do |u|
  u.password = 'director1234'
  u.role = :director
  u.dependency_id = Dependency.last.id
  u.name = 'Cooper'
  u.middle_name = 'Director'
  u.last_name = 'Kupp'
end

User.find_or_create_by(email: 'employee1@mail.com') do |u|
  u.password = 'employee1234'
  u.role = :employee
  u.dependency_id = Dependency.first.id
  u.name = 'Carlos'
  u.middle_name = 'Colaborador'
  u.last_name = 'Alumbrado'
end

User.find_or_create_by(email: 'employee2@mail.com') do |u|
  u.password = 'employee1234'
  u.role = :employee
  u.dependency_id = Dependency.last.id
  u.name = 'Pedro'
  u.middle_name = 'Colaborador'
  u.last_name = 'Limpia'
end

User.find_or_create_by(email: 'citizen@mail.com') do |u|
  u.password = 'citizen1234'
  u.role = :citizen
  u.name = 'Doroteo'
  u.middle_name = 'Buen'
  u.last_name = 'Ciudadano'
end
