 # encoding: UTF-8

/ Start Ruby Logic /

/ comments in Ruby /

/ commen 1 /
#commnet 2
#begin
comment 3
#end

/ variables en Ruby /

persona = 'Below the comments'
puts persona

/Strings concatenados/
i = 'White'
e = 'Mr' + i
puts e

/Strings de interpolación/
name = "Hello"
o = "Joseph tiene #{ 10 + 10 } años"
puts o

prac = "This word is"
u = "Joseph"
t = 'in UpCase'
result = 'Hello' + ' ' + prac + ' ' + "#{ u.upcase}" + ' ' + t
puts result

/Saltos de linea y tabulación/
b = "Hello Joseph \n \n \t How are you"
puts b

# IO mean I is for Input and O as in Output

/puts sirve para imprimir en la teminal,
pero agrega un salto de linea y print no lo agrega
si se usa print hay que agregarle un \n al final/

/para obtener informacion se usa el metodo gets/

/para contar las letras de un nombre se usa
nombre de la variable.length y el agrega un salto
de linea que tambien cuenta, por eso se usa un - 1 y la
solucion es usar el metodo .chomp que elimina el ultimo
caracter del string/

print "Write your name: "

nombre = gets
nombre = nombre.chomp
puts "Hello #{nombre}"
puts "Your name is #{nombre} and has these #{nombre.length} words"

print "Write your Last name: "

lastName = gets
lastName = lastName.chomp
puts "This is your last name #{lastName}"
puts "Your last name has #{lastName.length} words"

#sintaxis de ruby

/comentarios/
=begin comentarios pero deben estar pegando a los numeros
sino se rompen
dddd
=end
# comentarios

#operadores de comparacion

/operdor de mayor que/
/40 > 36/

#operador de menor que
/88 < 99/
 #operador de may

 # opreadores aritméticos
 /como saber que clase se numero o dato es par, /
 print "write any number"

 number = gets.chomp

 number = number.to_i

 residue = number % 2

 if residue == 0
    puts "#{number} es par"
 end

 /operadores aritméticos/
=begin
1. **
2. * / %
3. + -
4. en caso de haber () se evalua primero
=end

#operadores logicos

/ AND (&&): (52 > 5) && (74 > 9) = TRUE or FALSE
deben de ser verdaderas las dos

OR (||):(52 > 5) || (74 > 99) = TRUE OR FALSE
puede ser una verdadera y una falsa.

Nota: "tambien se puede en ruby usar las palabras or y and
en minuscula, pero se recomienda usar && y ||"

! es el operador not este invierte las  cosas
como de false a true y así

primeros que se ejecutan:

1. **
2. !
3. * divicion %
4. + -
5. < > <= >=
6. == <=> !=
7. &&
8. ||
9. asignacion
10. not
11. and y or
/

#Condicionales

=begin print "What is your gender: "
gender = gets.chomp

print "How old are you? : "
number_one = gets.chomp.to_i

print "What's your favorite number?: "
number_two = gets.chomp.to_i


if number_one < 40
   puts "You are a young #{gender}"
elsif number_one == 40
   puts "Already almost are not young"
else
   puts "you aren't younger"
end

/tambien existe en ruby el unless que evalua
a False en vez de True/
#example:
unless number_one <= 18
   puts "you can drive a car"
end


puts "you're a #{gender} and has #{number_one} years old and your favorite number is #{number_two}"
=end

#operadores ternarios

print "Write your user:  "

user = gets.chomp

/estas son tres formas de hacer esta lógica y una
usando los ternarios/


#1
/if user == "Joseph"
   puts "boss"
else
   puts "employer"
end
/

#2
/puts (if user == "Joseph" then "Boss" else "employer" end)/

#3
=begin answer = if user == "Joseph" then
   "Boss"
else
   "employer"
end

puts "You're a #{answer}"
=end

#4 (ternarios)

/si_condicion_verdadera ? entonces_resultado : si_no_esto/

puts user == "Joseph" ? "You are a Boss" : "You are a employer"

#sentencia case

# Ejemplo con calificaciones

print "give me your calification to the 1-100: "

calif = gets.chomp.to_i

=begin esto es usando condicionales
if calif == 75 || calif == 80
   puts "good job"
elsif calif == 85 || calif == 90
   puts "very well"
else calif == 95 || calif == 100
   puts "congratulations"
end
=end
/ahora usaremos case/

/esta es una forma usando puts en cada statement/
=begin case calif
when 75
   puts "good"
when 85
   puts "very well"
when 95
   puts "good job"
else 100
   puts "Excelent"
end
=end

/tambien se puede hacer así y para introducir mas valores
se usa ,/
/puts case calif
when 75,80
 "good"
when 85,90
 "very well"
when 95,98
 "good job"
else 100
 "Excelent"
end

puts "you got #{calif}"
/

#arreglos o array

#formas de hacer un arreglo
array_one = [1,"hola", true]

/para añadir un dato al arreglo se hace así:/

array_one[3] = "Mr White"

#array_two = Array.new(8) #esto lo que iniciar un arreglo con las cifras en vacias.

/para acceder a un elemento del arreglo se usa en nombre
del arrego[indice]/

/otra forma de inicializar un arreglo es con
%w que te permite no usar comas dentro del array/
array_three = %w[4 "hello" false]

/otra forma de agregar elementos al array es con nombre_del_array << elements/

array_three << "Hola Joseph"

/puts array_one
puts array_three
/

#ciclo each (iterador de arrays)

ages = %w[10 20 40 60 80]

/para sacar el promedio de edad se usa lo siguiente:/
sum = 0

ages.each_with_index do |calificacion, position|
   sum += calificacion.to_i
end

puts "El promedio de las edades es #{sum / ages.size}"

/nota: "se puede usar length o size/

/para iterar con each es
nombre_del_array.each do |se escribe una variables| end
despues se imprime y se interpola así= y si
se quiere saber la posicion en la que estamos
se usa el metodo _with_index así each_with_index/

=begin ages.each_with_index do |age, position|
   puts "these are some ages: #{age} and are these positions #{position}"
end
=end

############################


/arreglos con Join
- Join() convierte un objeto en una cadena y tambien se puede
escribir usando el * "something"

- Para ordenar el Arreglo se utliza el .sort()

- se utliza el .reverse para invertir un arreglo.

- se utliza en include?(argumento) para encontrar un elemento en
especifico.

- el .first devuelve el primer elemento del array y .last el ultimo

- .uniq devuelve el mismo arreglo pero sin los elementos repetidos.

- .sample te devuelve un elementos random del arreglo.

/
=begin
valores = [10, 8, 12, 89, 5, 7, 89 ]

puts valores.include?(7)

puts valores.first

puts valores.last

puts valores.uniq

puts valores.sample

=end
########################

/ leccion 17: Rangos /

/ para iterar en un arreglo se hace asi:

notes:

1- se utliza el metodo .step(numero) para ir saltando dentro del arreglo.
2- un rango se hace asi (1..20), ("a".. 'z')
3- para convertir un rango en un arreglo se usa el metodo .to_a.
/
=begin
people = [1, 8, 6, 75, 8, 7, "Joseph", "Mr white", 1.2]

people.each do |numero|
   puts numero
end


/ array de otra forma... /

ll = (1..10)

ll.each do |numero|
   puts numero
end

/ un iterador simple se hace asi /

(1..10).step(2) do |numero|
   puts numero
end

/ un iterador de strings /

("a".."z").each do |lol|
   print lol + " , "
end

/ rango con min, max,  /

puts (0..8).max

puts ('aa'..'ag')
=end

############################

/ Leccion 18: Ciclo While y until /

/ Notes:

1- la palabra expresion evalua de verdadero o falso, si es verdadero
se sigue ejecutando el ciclo but if it is false backward.

2- asi seria en javascript = for = (i = 0; i <= 10; i++)

3- until es el opuesto de while ya que while evalua verdadero y until falso.

/

o = 0

while o < 10
   puts o
   o += 1
end

playlist = ["Save your tears", "Circules", "Whatever it takes", "Intentions", "Believer"]

playing = true

index_song = 0

/ Si hay canciones en la lista de reproducciones y se esta reproduciendo
(playing es true) entonces debe ejecutar las caciones /

while (index_song < playlist.length) && playing == true
   puts "Play #{playlist[index_song]}"

index_song += 1

#una instruccion para el usuario si quiere que se detengan las
#las reproduciones envia 0, sino seguimos.

print "Type 0 if you want stop the playlist: "

reply = gets().chomp.to_i

playing = false if reply == 0

end


/
esto se puede hacer asi =
1.

if reply == 0
   playing = false
   end
end

2.

playing = false reply == 0
   end
end

3.

playing = respuesta != 0

/
#####
=begin
num = 50

print "Guess which is the number: "

number_user = gets().chomp.to_i

while number_user != num
   print "incorrect number, try again: "
   number_user = gets().chomp.to_i
end

puts "Congrats, you guess the number"

#CON UNTIL ES ASÍ

tic = 45

print "What is the tic: "

tic_user = gets().chomp.to_i

until tic_user == tic
   print "It is not the tic, try again please:  "

   tic_user = gets().chomp.to_i

end

puts "Congrats, this is the correct tic"

=end

#Do while

####
=begin
range = -2

begin
print "Write the range: "
   range = gets().chomp.to_i
end until range < 5

=end

############################

/ Leccion 19: Time, Upto y Downto /

/ Notes

1- Times crea un ciclo interno
2- Upto funciona haciendo una escala desde un punto hasta donde queremos
que llegue.
3- Downto funciona al inverso del mayor al menor.

/

####

=begin

#times

/ imprimir del 1-10 /

10.times do |i|
   puts i + 1
end

5.times do
   puts "Hola"
end

#Upto

1.upto(12) do |i|
   puts i
end

#downto

14.downto(1) do |o|
   puts o
end

=end

####################

/ Leccion 20: Matrices /

/ Notes:

las matrices se caracterizan por...

...la cantidad de dimensiones por ejemplo | las matriz es cuando tiene 2 dimensiones

arr = [1,5,6] = tiene una sola dimension.
arr = [1,2,8,[8,7,9]] = tiene dos dimesiones.
arr = [1,8,7,9[71,85,7,[8]]] = tiene tres dimensiones.

...las dimensiones deben de ser del mismo tamaño
   arr = [1,2,3[1,1,8]]

...Todos los elementos de la Matrix => deben de ser numeros

1- para importar una clase se usa require 'la clase que se debe importar'

2- el iterador each itera de izquierda a derecha y de arriba a bajo.

la matriz se ve así

[
   1 2 8
   1 8 7
   1 6 12
]

3- Para saber cuando una matriz es cuadrada se debe hacer lo siguiente:

 puts nombre de la matriz.diagonal? y si da error quiere decir que no es
 cuadrada.

 4- una mariz diaginal es aquella cuyos elementos fuera de la diagonal son ceros.


/
####
=begin

#Matrix
require 'matrix'

matriz = Matrix[[1,2,8],[1,8,7], [1,6,12]]

puts matriz

#Iteracion sobre una matriz

matriz.each do |i|
   puts i
end

#Encontrar una diagonal en la matriz

matriz.each(:diagonal) do |i|
   puts i
end

#Para saber los elementos que estan debajo de la diagonal

matriz.each(:strict_lower) do |i|
   puts i
end

#Para saber los elementos que estan arriba de la diagonal

matriz.each(:strict_upper) do |i|
   puts i
end

=end

########################################

/ Leccion 21: Hashes /

/ Notes:

1- Un hash es una estructura que almacena datos como un diccionario, tambien se les
llama arreglos asociativos

2- la diferencia entre un array y hash es la manera en que se accede a los datos


/

#En los arreglos se acceden a los datos por la posicion o indice

arr = ["Hola", "Mr.White"]

arr[2]

#Los hashes: los hashes se componen de dos elementos Una clave y un valor.
/ Osea los datos de la izquierda son las claves por donde podemos acceder
a los valores y los valores estan a la izquierda y son los datos que necesitamos

si queremos acceder a un elementos de bemos hacerlo mediante a la clave:

ej:

puts me[Edad] = result 20

/

me = { "Name" => "Joseph", "Edad" => "20", "last_name" => "Blanco", 5 => "impar" }
puts me["Name"]

#añadir un elemento al hash

me["Nickname"] = "Mr.White"

puts me ["Nickname"]

#Cuando no existe el dato que estamos buscando devuelve null, pero se puede definir
#un elemento por default

me.default = "not found"

puts me["Shoes"]

#Una sintaxis alternativa para el manejo de hashes que es mas limpia y mas común
#es utlizando todas las claves como simbolos.

house = { :color => "red", :size => 20 }

puts house

#otra manera es así:

shoes = {color: "blue", size: "small",}

puts shoes

#Para acceder a los datos igual se utlizan el simbolo que usamos eje= :color

#así se itera sobre un hash: en la iteracion de un hash se reciben dos valores.

me.each do |key, value|
   puts "En #{key} esta guardado #{value}"
end


##################################

/ Leccion 22: Operaciones con hashes /

/ Notes:


/

hat = {color: "Green", size: "Medium", material: "Leather"}

hat.default = "Not found"

puts hat

#para saber el largo de un hash

puts hat.length

/o tambiel se puede con/

puts hat.size

#metodo has_key?(): has_key nos devuelve verdadero cuando la clave que ingresamos esta en el
#hash y false cuendo no esta.

puts hat.has_key?(:size)

#El metodo keys devuelve todas las claves de hash

puts hat.keys

#El metodo values devuelve los valores de hash

puts hat.values

#El metodo clear limpia todo el hash

/hat.clear

puts hat/

/ podemos evaluar si el hash esta vacio con empty? así= puts hat.empty?
 /

#añadir un elemento

hat["high"] = "34px"

puts hat

#Para eliminar un elemento en especifico de nuestro hash
/
hat.delete(:size)

puts hat
/
#cuando se cual es el valor pero no se cual es la clave se hace así

puts hat.index('34px')

/tambien se puede con solo key/
puts hat.key('Green')

#tambien se puede hacer has_value para saber si hay algun valor

puts hat.has_value?('Leather')

#Para tranformar los valores en claves y las claves en valores se hace así
/
puts hat.invert
/
#se pueden combinar dos hashes

owner_hat = { name: "Joseph", ege: 20, last_name: "Blanco" }

puts hat.merge(owner_hat)

###############################

/ Leccion 23: Simbolos /

/ notes:

definicion:

un simbolo es una cadena inmutable

/

#Primera cadena con capitalize! y devuelve la misma palabra pero la primera en mayuscula.

str = "joseph"

str.capitalize!

puts str

#unas cadenas inmutables: las cadenas pueden tener el mismo elemento pero tienen distito id
#, pero los simbolos si son iguales tienen el mismo id.

cadena = "joseph"
cadena_uno = "Blanco"

numero = :tres
numero_b = :tres

puts cadena.object_id
puts cadena_uno.object_id

puts numero.object_id
puts numero_b.object_id

####
/
cuando debo utlizar los simbolos:

1- Cuendo no necesito modificar el string

/

##############################

/ Leccion 24: Metodos y argumentos /

/ Notes:

1- un metodo es un bloque de codigo que se puede reciclar o usar varias veces.

2- los metodos se pueden diferenciar porque se declaran con la palabra reservada def y despues el nombre del
metodo y se debe agregar al final la palabra end.

3- para llamar un metodo se hace con el nombre de las funcion mas (), pero se
pueden inorar los parentecis.

4- un argumento es la informacion que se le pasa a un metodo entre parentecis generalmente.

5- se puede utlizar la palabra return solo si se quiere terminar una ejecucion de la funcion.

/

#Metodo square

def square(x)
   #devuelve la raiz cuadrada de un numero

   x * x

end

puts square(8)

#metodo despedir

def despedir
   puts "Good bye"
end

despedir()

#Metodo saludar

def saludar
   puts "Hello everybody"
end

saludar

#Metodo utilizando return

def num(n)
   return 0 unless n.is_a? Integer
   n * n
end

puts num("hola")

#########################

/ Leccion 25: Operador splat /

/ Notes:

1- Para definir un metodo de mas de una palabra se debe utlizar snake case con _ entre cada
palabra.

2- el metodo splat se define con un  * antes de argumento del metodo .

3- El operador splat se puede convinar con otros metodos utlizando una coma ante del splat ,*



/

#Metodo no tan visto en ruby

def hello_people(people)
   people.each {| person | puts "Hello #{person}"}
end

hello_people(["Joseph", "Mr.white", "Kimi"])

#Metodo utilizando splat

def good_bye_people(*people)
   people.each {|person| puts "Good bye #{person}"}
end

good_bye_people "Joseph", "Kimi", 269, 1.2, "$"

#Metodo ultilizando el splat y otro metodo fijo.

def color(message,*color)
   color.each {|color| puts "#{message} a #{color} hat"}
end

puts color "This is", "red", "blue", "brown", "yellow"

#Otro metodo pero convirtiendo un array en una lista de argumentos

def animals(message, *animals)
animals.each {|animal| puts "#{message} this #{animal}?"}
end

animal = ["monkey", "zibra", "whale", "dolphin", "lion", "sparrow"]

animals "What is", *animal

###########################

/ Leccion 26: Keywords Arguments /

/ Notes:

1- una de las ventajas de utilizar las keywords es que podemos definir valores
por default

2- otra ventaja es que no importa el orden en que envies los argumentos siempre
y cuando se llamen igual a las keywords.

3- se pueden enviar muchos parametros utilizando el doble splat **.

4- Para hacer un argumento obligatorio no se debe ingresar ningun valor por
default ej: nombre:
/

#definir un metodo con los keywords


def hola(nombre:, edad:0, **somethings)
   if edad > 18
      puts "#{nombre} eres mayor de edad"
   elsif edad < 18
      puts "#{nombre} no eres mayor de edad"
   end
   #para acceder al hash y ver cierto parametro se hace así
   puts somethings[:fav_animal]
end

hola(nombre: "Joseph",edad: 20,fav_color: "blue", fav_animal: "owls" )

##########
/ Lección 27: Clases y Objetos /

/ Notes:

1- POO es la abreviatura de programacion orientada a objetos.
2- Las clases se encargan de definir atributos, metodos, campos y eventos.
3- En ruby la convencion es definir los nombres de las clases con mayuscula la primera
letra y y usar camelCase.

/
#utilizando la primera clase

class VideoPlay
   attr_accessor :minutes, :title

   def initialize(title)
      self.title = title

   end

   def play
   end

   def pause
   end

   def stop
   end

end



/Leccion 28: Initialize(constructor)/

instancia_video1 = VideoPlay.new("Mr white")
puts instancia_video1.title


/ =begin
instancia_video1 = Video.new
instancia_video1.title = "Objects and class"
puts instancia_video1.title

instancia_video2 = Video.new
instancia_video2.title = "attributes"
puts instancia_video2.title
=end /
########################

/ Lección 29: Propiedades y metodos accesores /

/ Notes:
1- Un es una coleccion de propiedades.
2- las variables de instancia inician con un @
3- Las variables de intancia no se pueden leer por fuera del objeto osea
de afuera de la clase, entonces se debe imprimir desde adentro.
4- los metodos accesores sirven para leer, modifcar, cambiar y asignar
una propiedad o variable de instancia.
5- los metodos accesores son get y set.
6- Los metodos de ayuda que tiene en

ex:

#Creando un objeto o una instancia de la clase


/

class Teacher
   def initialize(name)
      @nombre = name

      puts @nombre
   end

   def tell_me
      puts @nombre
   end

   def get_nombre
      @nombre
   end

   def set_nombre(new_name)
      @nombre = new_name
   end


end

joseph = Teacher.new('Joseph')

manuel = Teacher.new('Manuel')

adriana = Teacher.new('Adriana')

#intancias por fuera del contructor
joseph.tell_me
manuel.tell_me
adriana.tell_me

#Usando el get y el set

puts joseph.get_nombre
puts manuel.get_nombre
puts adriana.get_nombre

joseph.set_nombre('Mr White')

puts joseph.get_nombre


#este es un objeto como se ve en ruby

class Greetings

   def initialize(word)
      @palabra = word

      puts @palabra
   end

   def palabra
      @palabra
   end

   def palabra=(palabra)
      @palabra = palabra

   end
end

hello = Greetings.new('Hello!')
hi = Greetings.new('¡Hi!')
how_is_going = Greetings.new("¿How is going?")

/ esto es un get /
puts hello.palabra
puts hi.palabra
puts how_is_going.palabra

/ esto es un set /

hi.palabra = 'Good'

puts hi.palabra

/ estos son metodos accesores mas faciles.

class Speacher
   attr_accessor :nombre = este define ambas (get y set)
   attr_reader :nombre = este solo define en get
   attr_writer :nombre = este solo define el set

end

/
########################

/ Leccion 30: Herencia /

/  Notes:

1- Para poder heredar de la clase padre se utiliza el <
/

#metedo de herencia

class Video
   attr_accessor :title,:duration
end

class YouTubeVideo < Video
   attr_accessor :youtube_id
end

yt = YouTubeVideo.new

yt.title = "Herencia en Ruby"
yt.youtube_id = "dfjhsdjf5656265f"

puts yt.title
puts yt.youtube_id

#Metodos de herencia diferenciados


class ShowVideo
   attr_accessor :title
   attr_accessor :duration
   attr_accessor :description

   def embed_video_code
      "<video></video>"
   end

   def setup(title)
      @title = title
   end

end

class FacebookVideo < ShowVideo
   attr_accessor :facebook_id
end

class YoutubeVideo < ShowVideo
   attr_accessor :video_id

   def embed_video_code
      "<iframe/>"
   end

   def setup(title)
       super
       puts "anything else"
   end
end

pk = YoutubeVideo.new

pk.setup("Mr White")

puts pk.title


#practice.rb

=begin
require 'sinatra'

get '/' do
   'Hello Mr White'
end
=end

#######################
/ Leccion 31: Alcance de metodos /

/ notes:

1. los metodos en ruby se clasificane en publicos, privados y los protegidos

- los metodos publicos se pueden calling desde cualquier lugar y es el metodo por default.
- los metodos privados solo se pueden calling desde adentro de la clase y las hijas si pueden llamarlos.
- los metodos protegidos se pueden calling desde otras clases siempre y cuando sea del mismo tipo.
/

#Metodos protegidos

class Father
   def initialize
      private
   end

   def public
      puts "I'm Public"
   end

   private
      def private
         puts "I'm pivate"
      end

   protected
      def protected
         puts "I´m protected"
      end

end


class Son < Father
   def initialize
      @inner = Father.new
   end

   def call_protected
      @inner.protected
   end

end

class Wife
   def initialize
      @inner = Father.new
   end

   def call_protected
      @inner.protected
   end
end


Father.new
Son.new

#########

/ Lección 32: Metodos de clase  /

/ Notes:

1- los metodos de clase se pueden llamar con el nombre de la clase y el nombre del metodo.

2- Cuando se coloca self quiere decir que es metodo le pertenece a la clase.



/

#metodo de clase

class IamAObject
   @nombre_clase = "I am a Object"

   def self.nombre_clase
      @nombre_clase
   end

   / agregando un set /

   def self.nombre_clase=(nombre_clase)
      @nombre_clase = nombre_clase
   end
end

IamAObject.nombre_clase = "hello everybody"

puts IamAObject.nombre_clase

#Otra manera de definir los metodos es así:


=begin

class IamAObject
   @nombre_clase = "I am a Object"

   class << self

   def nombre_clase
      @nombre_clase
   end

   / agregando un set /

    def nombre_clase=(nombre_clase)
      @nombre_clase = nombre_clase
    end
   end
 end



IamAObject.nombre_clase = "hello everybody"

puts IamAObject.nombre_clase

=end

/ Lección 32: Variables de clase /

/ notes:

las variables de clase empiezan con dos @@

/

#Usando varialbles de instancia

class Watch
   @@type = "video/mp4"

   def self. type_from_class
      p @@type
   end

   def type_from_class
     p @@type
   end
end

Watch.type_from_class

Watch.new.type_from_class

# Con herencia

class Obj
   @@of_class = "class jajaja"
   @@of_instance = "Instance jejej"
end

class Daugther < Obj
   def self.test
      p @@of_class
      p @@of_instance
   end
end

Daugther.test

/ Lección 35: Bloques /

/ Notes:

1- debes usar { } para definir el bloque si es solo de una linea, pero
se es de mas de una se debe utilizar do |SOMETIHNG|
end

/

#bloques iterados

[1, 2, 3, 4, 5, 110].each do |number|
   puts number
end

# Otra manera de iterar los array

[1,8,9,74,85].each  { |num|   puts num  }

#si solo queremos los impares

impares = [1,8,5,9,15,40].select do |number_impar|
   number_impar % 2 != 0
end

puts impares

#Utilizando el each_with_index

["Joseph", "Blanco", "Flores"].each_with_index do |name, index|

   puts "#{index}.- #{name}"
end


/ Leccion 34: Polimorfismo /

/ Notes:
1- el poliformfismo es cuando una accion es interpretada o ejecutada
de manera distinta por los elementos a los que estamos enviando la orden.

2- en otros leguajes de programacion se utiliza el concepto de interfaces que
significa que si algunas veces se necesitan que ciertos objetos hagan ciertas cosas.
En ruby no existe eso se utliliza el Duck typing que es que si esa orden tiene las
caracteristicas que necesitamos debemos tratarlo como tal no importa su procedencia.

/

#primer ejemplo con el polimorfismo.

class Screem
   def play
      #not implemented
   end
end

class Vimeo < Screem
   def play
      p "insertar el reproductor de Vimeo"
   end
end

class YT < Screem
   def play
      p "insertar el reproductor de YouTube"
   end
end

videos = [YT.new, Vimeo.new, YT.new, Vimeo.new]


videos.each do |videos|
   videos.play
end

/ Lección 36: Metodos que reciben bloques /

/Notes:

1- Para llamar un bloque de codigo dentro de un metodo se utliza la palabra
reservada de ( yield ).

2- si el interprete de ruby encuentra la palabra yield pero no hay ningun bloque
de codigo enviado, envia un error para evitarlo se necesita utlizar la palabra
block_given? y condicionarlo con if y asi se evita que de error.

3- Tambien se puede recibir un bloque desde el  mismo metodo utilizando el &argumento

4- Puedes enviar  ha otros metodos los bloques que almacenas.

/

#primer ejecicio

def hola
   yield
end

hola { puts "Hola Mr.White" }

#otra manera de hacerlo es:

def good
   yield
end

good do
   puts "Hello Joseph"
end

#Ejemplo con block_given?

def bye
   yield if block_given?
end

bye { puts "Adios" }

def hello
   yield if block_given?
end

hello {}

# utilizando el ampersand &

def greet &block
   block.call if block_given?
end

greet { puts "Hola Manuel" }

# almacenando los bloques es otros metodos

def poll &bloque
   other_poll(&bloque)
end

def other_poll &block
   puts "mandado a llamar desde other_poll"
   block.call
end

poll { puts "la piscina es de color verde" }


/ Lección 37: argumentos y valores retornados en el bloque /

/ notes:


/

#primer ejercicio

class People
   attr_accessor :nombre, :apellido, :popular_name

   def saludar
      yield (@nombre)
   end

   def decir_with
      apellido = yield (@apellido)
      puts apellido
    end

    def nombre_popular
      yield(@popular_name)
    end


end

joseph = People.new

joseph.nombre = "Joseph Manuel"

joseph.saludar { |nombre| puts "Hola #{nombre}" }
joseph.saludar { |nombre| puts "Hello #{nombre}" }
joseph.saludar { |nombre| puts "Hallo #{nombre}" }
joseph.saludar { |nombre| puts "voun your #{nombre}" }



blanco = People.new

blanco.apellido = "Blanco Flores"

blanco.decir_with { |apellido| "este es su apellido #{apellido}" }
blanco.decir_with { |apellido| "this is his last name #{apellido}" }
blanco.decir_with { |apellido| "das ist sein nachname #{apellido}" }
blanco.decir_with { |apellido| "c'est son nom de famille #{apellido}" }


apodo = People.new

apodo.popular_name = "Mr white and jopetia"

apodo.nombre_popular { |popular_name| puts "estos son algunos apodos que tiene joseph #{popular_name}" }
apodo.nombre_popular { |popular_name| puts "These are some nicknames has joseph #{popular_name}" }
apodo.nombre_popular { |popular_name| puts "Das sind einige Spitznamen, die Joseph hat #{popular_name}" }
apodo.nombre_popular { |popular_name| puts "ce sont des surnoms que joseph a #{popular_name}" }


/ Lección 38: alcance de las variables en bloque /

/ notes:

- En los bloques a la izquierda se colocan los argumentos y a la deracha de
; see colocan las variables locales.

/

# primer ejecicio

def hallo
   yield
end


nombre = "Gioceppe"

hallo { puts "Hallo #{nombre}" }

# modificando la variables dentro de bloque

def apple
   yield
end

fruit = "apple"

apple do
   fruit = "pineapple"
   puts "this is a #{fruit}"
end

puts fruit

#creando una variable local dentro del bloque

def ban
   yield
end

letra = "J"

ban do |; letra |
   letra = "O"
   puts "This is #{letra}"
end

puts letra


/ Leccion 39: Proc /

/ notes:

1- Los bloques no son objetos en Ruby.
2- Los procs son objetos y se pueden almacenar en una variable
en cambio los bloques no.
/

#definicion de un bloque

def ventaja &block
   puts block .class.name
   block.call
end

ventaja { puts "si joseph" }

#sintaxis de los procs


def gall proc1, proc2
   proc1.call
   proc2.call
end

proc1 = Proc.new { puts "Hola Joseph" }
proc2 = Proc.new { puts "Hola Blanco" }

gall(proc2, proc1)
