# Refactorización de código `original.rb`

En este proyecto se presenta una refactorización del código `original.rb`. Se han realizado varios cambios y mejoras en la implementación, incluyendo:

- Se ha agregado el uso de `attr_accessor` para los atributos de la clase `Person`, lo que proporciona getter y setter automáticos para `first_name`, `last_name` y `age`.
- Se ha eliminado el atributo `type` de la clase `Person`, ya que será reemplazado por la clase de la instancia.
- Se han eliminado los condicionales en los métodos `talk` e `introduce` de la clase `Person`.
- Se han creado las clases `Student`, `Teacher` y `Parent` que heredan de la clase `Person`.
- Se ha redefinido el método `talk` y `introduce` en las clases `Student`, `Teacher` y `Parent`.

## Clase Person

La clase `Person` es la clase padre de las clases `Student`, `Teacher` y `Parent`. Tiene los siguientes atributos y métodos:

### Atributos

- `first_name`: el primer nombre de la persona.
- `last_name`: el apellido de la persona.
- `age`: la edad de la persona.

### Métodos

- `initialize(first_name, last_name, age)`: el constructor de la clase `Person`.
- `birthday`: incrementa la edad de la persona en 1.
- `talk`: muestra un mensaje de saludo.
- `introduce`: muestra un mensaje de presentación.
- `self.sneeze`: un método de clase que devuelve un string, representando un estornudo.

## Clases Student, Teacher y Parent

Estas clases heredan de la clase `Person` y redefinen los métodos `talk` e `introduce` para mostrar mensajes específicos de cada tipo de persona.

## Uso

1. Ejecuta el archivo Ruby `refactory.rb` en la terminal:
   ```
   ruby refactory.rb
   ```

2. El programa crea instancias de las clases `Student`, `Teacher` y `Parent`, y realiza diferentes acciones como el incremento de edad, acceso a atributos y llamadas a métodos.

3. Se imprime en la consola el nombre completo, edad, rol y se llama a los métodos `introduce` y `talk` para cada instancia.

¡Disfruta explorando las clases y los mensajes personalizados para cada tipo de persona!

```
Nombre completo: Jose Lito
Edad: 19
Rol: Student
Hola profesor. Mi nombre es Jose Lito.
Aquí es la clase de programación con Ruby?

-------------------------
Nombre completo: Brayan Perez
Edad: 56
Rol: Teacher
Hola alumnos. Mi nombre es Brayan Perez.
Bienvenidos a la clase de programación con Ruby!

-------------------------
Nombre completo: Rosa Espinoza
Edad: 40
Rol: Parent
Hola. Soy uno de los apoderados. Mi nombre es Rosa Espinoza.
Aquí es la reunión de apoderados?

-------------------------
La gripe ataca! Aaaaachis!
```

## Contribución

Si deseas contribuir a este proyecto, no dudes en abrir un pull request. ¡Tus aportes y mejoras son bienvenidos!

¡Disfruta del código refactorizado y las clases actualizadas de las personas!
