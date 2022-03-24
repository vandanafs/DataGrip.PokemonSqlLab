//What are all the types of pokemon that a pokemon can have?
Select from * types;

//What is the name of the pokemon with id 45?
select name from pokemon where id=45;

//How many pokemon are there?
 select count(id) from pokemons ;

//How many types are there?
Select count(id) from types;

//How many pokemon have a secondary type?
select count(secondary_type ) from pokemons;

