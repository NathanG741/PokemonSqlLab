--Question 1:
SELECT name FROM types;
--Question 2:
SELECT name FROM pokemons WHERE id = 45;
--Question 3:
SELECT count(*) as number_of_pokemon FROM pokemons;
--Question 4:
SELECT count(*) as number_of_types FROM types;
--Question 5:
SELECT count(*) FROM pokemons WHERE secondary_type;