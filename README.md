# CIU_PONG

Autor: Pablo Morales Gómez

Se ha creado una pequeña aplicación a través de la herramienta Processing que simula el clásico videojuego PONG. Es un juego pensado para dos jugadores 
donde cada uno de ellos controla una "pala" que se mueve solo en el eje vertical y deben intentar colar la pelota por detrás de la pala del adversario 
para conseguir un punto. La bola trayectoria que la bola describe va a estar condicionada por la forma en la que sea golpeada por las palas.

Los controles de los jugadores son las teclas "W" y "S" para el que se encuentra más a la izquierda y "U" y "J" para el que se encuentra a la derecha. Solo
son necesarias 2 teclas porque solo hay dos posibles movimientos (arriba o abajo). Como el set de posibles movimientos para un jugador era tan limitado y
pensábamos que podría ser poco entretenido para los jugadores en el tiempo se decidió añadir un poco de "complejidad" a la pala.

Dependiendo de con que zona golpees la pelota, la velocidad en el eje x (nos referimos con velocidad a la cantidad de puntos que se desplaza en cada frame)
variará, siendo mayor si se golpea con el centro y menor a medida que nos aproximamos a los bordes. Para esto usamos las coordenadas de la pala para dividirla 
en 5 zonas distintas. La velocidad que se imprime en el eje y depende también de con que zona de la raqueta se golpee siendo mayor cuanto más cerca estes de 
los bordes. En este caso decidimos que solo se imprimiría velocidad en la componente y si cuando se golpeaba el balón se estaba pulsando una tecla, con esto 
conseguimos la sensación de aplicar un efecto a la bola lo que hace el juego más vistoso y entretenido. En el caso de que se golpee y no se esté moviendo el
jugador la velocidad en el eje vertical se irá reduciendo poco a poco hasta llegar a cero. Cabe destacar que el sentido de la velocidad en este último eje
dependerá de si nos estamos moviendo hacia abajo (teclas "S" o "J") o hacia arriba (teclas "W" o "U").

El jugador que saca dentro de la partida es, en el primer punto, aleatorio. A partir del primer gol el jugador que sacará será aquel al que han marcado el punto.
Lo hemos hecho de esta manera puesto que pensamos que es la forma habitual de realizarlo y porque de esta forma el jugador que ahora se encuentra en desventaja 
goza de una pequeña ventaja (el saque) que le puede ayudar a igualar el marcador y hacer el partido más interesante.

Se ha decidido incluir 3 sonidos diferentes para facilitar al usuario el reconocimiento de determinadas situaciones y su diferenciación. Son los siguientes:
un sonido para cuando se produce un rebote en un borde del campo de juego, uno para cuando el jugador lográ golpear la pelota con la pala y uno para indicar
que se ha marcado un gol (este último sirve de refuerzo al marcador).

La última de las decisiones tomadas ha sido la paleta de colores escogida. Se ha optado por matener el estilo bicolor del juego original pero cambiándolos
por otros que consideramos eran más llamativos y que daban una apariencia mas actualizada al tiempo que manteníamos el contraste para facilitar la accesibilidad
a una mayor cantidad de usuarios.

Las herramientas y referencias utilizadas fueron las propuestas por el guión de prácticas, además del propio guión de prácticas. Si se desea ver una 
previsualización del proyecto sin necesidad de realizar una descarga completa del mismo, se ha incluido un GIF, que se puede encontrar en la ruta 
/practica1/animacion.gif, que muestra como sería una partida.
