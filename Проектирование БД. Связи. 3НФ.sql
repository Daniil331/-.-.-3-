create table if not exists Genre_perfomer(
id SERIAL primary key,
id_perfomer integer references Performer(id),
id_genre integer references Genre(id)
);

create table if not exists Genre(
id SERIAL primary key,
name_genre VARCHAR(40) not null
);

create table if not exists Performer(
id SERIAL primary key,
nick_name VARCHAR(60) not null
);

create table if not exists Album(
id SERIAL primary key,
name_album VARCHAR(60) not null,
realease_data VARCHAR(60) not null
);

create table if not exists Tracks(
id SERIAL primary key,
name_track VARCHAR(40) not null,
track_duration VARCHAR(40) not null,
id_album integer references Album(id)
);

create table if not exists Collection(
id SERIAL primary key,
release_data VARCHAR(40) not null,
name VARCHAR(40) not null
);

create table if not exists List_album(
id SERIAL primary key,
id_performer integer references Performer(id),
id_album integer references Album(id)
);

create table if not exists Collection_tacks(
id_track integer references Track(id),
id_collection integer references Collection(id)
);
