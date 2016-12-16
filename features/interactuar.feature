Feature:
  Como aficionado pokemon
  Quiero jugar pokememo y adivinar los pares de los personajes pokemon
  Para divertirme encontrando los pares
  
Scenario: Debe tener el titulo "Bienvenido a Pokememo"
  Given que ingrese a la aplicacion
  Then debo ver "Bienvenido a Pokememo"

Scenario: Debe mostrarse una tabla
  Given que ingrese a la aplicacion
  Then debo ver una tabla "tablaPokemon"

Scenario: Debe mostrar la imagen de togepi
  Given que ingrese a la aplicacion
  And muestro a pikachu
  And hago clic en la imagen de pikachu
  Then debo ver la imagen togepi
  
Scenario: Debe mostrar la imagen de togepi
  Given que ingrese a la aplicacion
  And muestro a pikachu en "imgpikachu2"
  And hago clic en la imagen de pikachu "imgpikachu2"
  Then debo ver la imagen togepi "togepi"



