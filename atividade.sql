create table if not exists client (
  id SERIAL primary key,
  nome varchar(100) not null,
  email varchar(255) unique not null,
  status varchar(20) default 'ativo',
  limite numeric(10,2) check (limite >=0),
  criado_em timestamptz default now()
);

create table autores (
  id serial primary key,
  nome varchar(100) not null
);

  create table livros (
    id serial primary key,
    titulo varchar(150) not null,
    preco numeric(10,2) not null,
    autor_id integer references autores (id) on delete restrict
  );
