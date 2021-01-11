create table users(
    username varchar(50) not null primary key,
    password varchar(200) not null,
    enabled boolean not null
);

create table authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    constraint fk_authorities_users foreign key(username) references users(username)
);
create unique index ix_auth_username on authorities (username,authority);

INSERT INTO `users` (`username`, `enabled`, `password`) VALUES
('rui',	CONV('1', 2, 10) + 0,	'$2a$10$TViSLC7qfQeX2Ed7wZ0pNevpuAMCjaXG5XkZaScMNJrK1FMO6UzXy');

INSERT INTO `authorities` (`username`, `authority`) VALUES
('rui',	'ADM');