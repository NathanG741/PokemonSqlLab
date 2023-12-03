--Question 1:
SELECT pokemons.name as PokemonName , types.name as TypesName FROM pokemons
LEFT JOIN types ON pokemons.primary_type=types.id;
--Question 2:
SELECT pokemons.name as PokemonsName, types.name as SecondaryType FROM pokemons
LEFT JOIN types ON pokemons.secondary_type=types.id WHERE pokemons.name = 'Rufflet';
--Question 3:
SELECT pokemons.name as PokemonName FROM pokemons
LEFT JOIN pokemon_trainer ON pokemons.id=pokemon_trainer.pokemon_id WHERE trainerID = 303;
--Question 4:
SELECT Count(*) as PoisonTypePokemon FROM pokemons
LEFT JOIN types ON pokemons.secondary_type=types.id WHERE secondary_type = 7;
--Question 5:
SELECT types.name, Count(types.id) as PokemonByTpes FROM pokemons
LEFT JOIN types ON pokemons.primary_type=types.id GROUP BY types.ID;
--Question 6:
SELECT trainers.trainerid, trainers.trainername, COUNT(*) as Level100 FROM trainers
LEFT JOIN pokemon_trainer ON pokemon_trainer.trainerid=trainers.trainerid
WHERE pokemon_trainer.pokelevel = 100 GROUP BY trainers.trainerid;
--Question 7:
SELECT pokemons.name, Count(*) as DistinctPokemon FROM pokemons
LEFT JOIN pokemon_trainer ON pokemons.id=pokemon_trainer.pokemon_id GROUP BY pokemons.name HAVING Count(*) = 1;





