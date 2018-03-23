drop database if exists PruebaAhorcado;

create database if not exists PruebaAhorcado;

use PruebaAhorcado;

create table Jugador(
usuario varchar(30) not null,
cantidadJuegos int,
contra varchar(32) not null,
puntajeMaximo int,
Enlinea bool not null,
primary key pkJugador(usuario)
);

create table Puntuacion(
idPuntuacion int auto_increment not null,
puntaje int not null,
usuario varchar(30) not null,
primary key pkPuntuacion(idPuntuacion),
foreign key fkPuntuacionXJugador(usuario) references Jugador(usuario)
);

create table Palabra(
codigoPalabra int auto_increment not null,
texto varchar(25) not null,
reporte int,
pista varchar(35) not null,
primary key pkPalabra(codigoPalabra)
);

create table JugadorXPalabra(
idJugadorXPalabra int auto_increment not null,
usuario varchar(30) not null,
codigoPalabra int not null,
primary key pkJugadorXpalabra(idJugadorXPalabra),
foreign key fkJugadorXPalabraXJugador(usuario) references Jugador(usuario),
foreign key fkJugadorXPalabraXPalabra(codigoPalabra) references Palabra(codigoPalabra)
);
<<<<<<< HEAD

create table UsuariosBuscandoPartida(
idBusqueda int auto_increment not null,
Usuario varchar(30) not null
);

/*Pruebas*/

insert into Palabra (texto,reporte,pista) values ("hola mundo",0,"la vieja confiable en progra");


insert into Jugador values ("ref98",1,aes_encrypt("prueba","hola"),5000,true);

SELECT * FROM Jugador where AES_DECRYPT(contra, 'hola') = "prueba" and usuario = "ref98";


insert into Puntuacion(puntaje,usuario) values (5000,"ref98");

insert into JugadorXPalabra(usuario,codigoPalabra) values ("ref98",1);

select * from palabra;
select * from Jugador;
select * from Puntuacion;
select * from JugadorXPalabra;
select * from UsuariosBuscandoPartida;

delete from UsuariosBuscandoPartida where Usuario="ref98";

select count(usuario) from UsuariosBuscandoPartida;

select usuario as 'usuarios' from UsuariosBuscandoPartida;
=======
>>>>>>> 266b95d252cc6e6694363507d4565707fe236c5b