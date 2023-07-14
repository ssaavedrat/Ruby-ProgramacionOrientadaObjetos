# Refactorización de codigo original.rb
# Agregamos attr_accessor (getter y setter) a los atributos de la clase Person
# Eliminamos el atributo type de la clase Person (será reemplazado por la clase de la instancia e.g. new_student.class)
# Eliminamos los condicionales de los métodos talk e introduce
# Creamos las clases Student, Teacher y Parent que heredan de la clase Person
# Redefinimos los métodos talk e introduce en las clases Student, Teacher y Parent

# Clase Person padre de las clases Student, Teacher y Parent
class Person
  # Atributos de la clase Person
  attr_accessor :first_name, :last_name, :age

  # Inicializador de la clase Person
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # Metodos de instancia de la clase Person
  # Método cumpleaños
  def birthday
    @age += 1
  end

  # Método hablar
  def talk
    puts "Hola, soy #{@first_name} #{@last_name}"
  end

  # Método presentarse
  def introduce
    puts "Hola, soy #{@first_name} #{@last_name} y tengo #{@age} años"
  end

  # Metodos de clase de la clase Person
  # Método estornudar
  def self.sneeze
    return 'Aaaaachis!'
  end
end

# Clase Student hereda de la clase Person
class Student < Person
  # Redefinición del método talk
  def talk
    puts 'Aquí es la clase de programación con Ruby?'
  end

  # Redefinición del método introduce
  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end

# Clase Teacher hereda de la clase Person
class Teacher < Person
  # Redefinición del método talk
  def talk
    puts 'Bienvenidos a la clase de programación con Ruby!'
  end

  # Redefinición del método introduce
  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end
end

# Clase Parent hereda de la clase Person
class Parent < Person
  # Redefinición del método talk
  def talk
    puts 'Aquí es la reunión de apoderados?'
  end

  # Redefinición del método introduce
  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end

# Instancia de la clase Person
jose_estudiante = Student.new('Jose', 'Lito', 18)

# Llamando al método de instancia birthday de la clase Person
jose_estudiante.birthday

# Accediendo a los atributos de la clase Person ancestral
puts "Nombre completo: #{jose_estudiante.first_name} #{jose_estudiante.last_name}"
puts "Edad: #{jose_estudiante.age}"
puts "Rol: #{jose_estudiante.class}"

# Llamando a los métodos de instancia introduce y talk de la clase Person
jose_estudiante.introduce
jose_estudiante.talk

puts '-------------------------'

# Instancia de la clase Teacher
brayan_profesor = Teacher.new('Brayan', 'Perez', 55)

# Llamando al método de instancia birthday de la clase Person
brayan_profesor.birthday

# Accediendo a los atributos de la clase Person ancestral
puts "Nombre completo: #{brayan_profesor.first_name} #{brayan_profesor.last_name}"
puts "Edad: #{brayan_profesor.age}"
puts "Rol: #{brayan_profesor.class}"

# Llamando a los métodos de instancia introduce y talk de la clase Person
brayan_profesor.introduce
brayan_profesor.talk

puts '-------------------------'

# Instancia de la clase Parent
rosa_apoderado = Parent.new('Rosa', 'Espinoza', 35)

# Redefiniendo la edad de la instancia rosa_apoderado
rosa_apoderado.age = 40

# Accediendo a los atributos de la clase Person ancestral
puts "Nombre completo: #{rosa_apoderado.first_name} #{rosa_apoderado.last_name}"
puts "Edad: #{rosa_apoderado.age}"
puts "Rol: #{rosa_apoderado.class}"

# Llamando a los métodos de instancia introduce y talk de la clase Person
rosa_apoderado.introduce
rosa_apoderado.talk

puts '-------------------------'

# Llamando al método de clase sneeze de la clase Person
puts "La gripe ataca! #{Person.sneeze}"


