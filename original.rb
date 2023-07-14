class Person
  def initialize(first, last, age, type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
  end

  def birthday
    @age += 1
  end

  def talk
    if @type == 'Student'
      puts 'Aquí es la clase de programación con Ruby?'
    elsif @type == 'Teacher'
      puts 'Bienvenidos a la clase de programación con Ruby!'
    elsif @type == 'Parent'
      puts 'Aquí es la reunión de apoderados?'
    end
  end

  def introduce
    if @type == 'Student'
      puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    elsif @type == 'Teacher'
      puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    elsif @type == 'Parent'
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
end

# Instancia de la clase Person
jose_estudiante = Person.new('Jose', 'Perez', 18, 'Student')

# Llamando a los métodos de la clase Person
jose_estudiante.introduce
jose_estudiante.talk
jose_estudiante.birthday

# Notar que no podemos acceder a los atributos de la clase Person!
puts "No podemos obtener 'jose_estudiante.first_name'"
puts "No podemos obtener 'jose_estudiante.last_name'"
puts "No podemos obtener 'jose_estudiante.age'"
puts "No podemos obtener 'jose_estudiante.type'"

# Ocurre lo mismo con los type Teacher y Parent