--Question 1:
SELECT pokemons.name as PokemonName, trainers.trainername as TrainerName, pokemon_trainer.pokelevel as Level,
p.name as PrimaryType, s.name as SecondaryType FROM pokemons
INNER JOIN pokemon_trainer ON pokemons.id=pokemon_trainer.pokemon_id
INNER JOIN trainers ON pokemon_trainer.trainerID=trainers.trainerID
INNER JOIN types p ON pokemons.primary_type=p.id
LEFT JOIN types s ON pokemons.secondary_type=s.id
ORDER BY pokemon_trainer.pokelevel DESC;


--Strongest trainers are those with higher level pokemon