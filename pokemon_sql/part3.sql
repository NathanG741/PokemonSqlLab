--Question 1:
SELECT pokemons.name as PokemonName , types.name as TypesName FROM pokemons
LEFT JOIN types ON pokemons.primary_type=types.id;
--Question 2:
SELECT pokemons.name as PokemonsName, types.name as SecondaryType FROM pokemons
LEFT JOIN types ON pokemons.secondary_type=types.id WHERE pokemons.name = 'Rufflet';
--Question 3;








