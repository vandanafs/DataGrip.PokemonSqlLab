//What is each pokemon's primary type?
select p.name, t.name as primary_type  from pokemons p  join types t  on p.primary_type=t.id;

//What is Rufflet's secondary type?
select p.name, t.name as seconday_type from pokemons p join types t on p.secondary_type=t.id where p.name='Rufflet';

//What are the names of the pokemon that belong to the trainer with trainerID 303?
select t.trainerID,  p.name as pokemons_name  from  pokemon_trainer t join pokemons p ON t.pokemon_id=p.id where trainerID=303;

//How many pokemon have a secondary type Poison
select p.name, t.name as Secondary_type from pokemons p join types t ON p.secondary_type=t.id  where t.name='Poison';


//What are all the primary types and how many pokemon have that type?
select  Count(p.id), t.name as Primary_type from pokemons p join types t ON p.primary_type=t.id group BY t.name;

//How many pokemon at level 100 does each trainer with at least one level 100 pokemone have?
select  count(tainerID)  from pokemon_trainer  where pokelevel=100 group By trainerID;

//How many pokemon only belong to one trainer and no other?
 select Count(pt.pokemon_id), p.name from pokemons p join pokemon_trainer pt ON p.id=pt.pokemon_id group by p.name having count(pt.pokemon_id
)=1;

// with all the counts 
select  count(tainerID)  from pokemon_trainer  where pokelevel=100 group By trainerID;
