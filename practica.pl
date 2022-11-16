
%PRACTICA CONSULTAS PROLOG


%Base de conocimiento  
ve_peliculas(roberto,suspenso).
ve_peliculas(jaanai,suspenso).
ve_peliculas(abimael,suspenso).
ve_peliculas(leonardo,romance).
ve_peliculas(miguel,terror).

escucha_musica(abelino,reggae).
escucha_musica(jose,rock).
escucha_musica(izmucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).

consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

netflix(roberto,si).
netflix(jaanai,si).
netflix(abimael,si).
netflix(leonardo,no).
netflix(miguel,si).

spotify(abelino,no).
spotify(jose,si).
spotify(izmucaneth,si).
spotify(rolando,no).
spotify(maldonado,si).

tiempo_libre(roberto,no).
tiempo_libre(jaanai,no).
tiempo_libre(abimael,no).
tiempo_libre(leonardo,no).
tiempo_libre(miguel,no).

tiene_audifonos(abelino,no).
tiene_audifonos(jose,no).
tiene_audifonos(izmucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(maldonado,no).

usa_audifonos(roberto,no).
usa_audifonos(jaanai,si).
usa_audifonos(abimael,no).
usa_audifonos(leonardo,si).
usa_audifonos(miguel,si).







%1.- ¿Quienes prefieren ver peliculas?
prefieren_peliculas(X) :- ve_peliculas(X,_).


%2.- ¿Quienes prefieren escuchar musica?
prefieren_musica(X):-escucha_musica(X,_).

%3.- Alguien que ve peliculas de suspenso, disfruta verlas con palomitas, tiene una cuenta
% de netflix y tiempo libre, tiene una tarde perfecta
tarde_perfecta(X):- ve_peliculas(X,suspenso), consume(X,palomitas), netflix(X,si), tiempo_libre(X,si).


% 4.-Alguien que ve peliculas consumiendo una ensalada, tiene una vida saludable
vida_saludable(X):- netflix(X,si), consume(X,ensalada).


%5.- Alguien que escucha regional, tiene audifonos y la aplicacion de spotify
%disfruta del camino a casa
disfruta_camino_casa(X):- escucha_musica(X,regional), tiene_audifonos(X,si), spotify(X,si).


%6.-Alguien es feliz si ve peliculas consumiendo maruchan, tiempo libre y netflix
es_feliz(X) :- ve_peliculas(X,_), consume(X,maruchan),tiempo_libre(X), netflix(X).


%7.- Unicamente pueden ser amigos quienes tienen los mismos gustos (peliculas, botana)
son_amigos(X,Y):- consume(X,maruchan),consume(Y,maruchan);consume(X,palomitas),
consume(Y,palomitas);consume(X,ensalada),consume(Y,ensalada);ve_peliculas(X,suspenso),
ve_peliculas(Y,suspenso);ve_peliculas(X,romance),ve_peliculas(Y,romance); 
ve_peliculas(X,terror),ve_peliculas(Y,terror).