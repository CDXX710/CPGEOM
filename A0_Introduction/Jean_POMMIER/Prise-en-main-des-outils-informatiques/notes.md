Pour les exercices de BD : 

On utilise : 

- [x] https://opendata.lillemetropole.fr/explore/dataset/menu-cantine/table/ pour illustrer une donnée relationnelle mise à plat, mais pas top. Ca serait sympa de la migrer en base structurée proprement et jouer des requêtes dessus, du genre
- [x] https://opendata.lillemetropole.fr/explore/dataset/donnees-essentielles-mel/table/ comme table simple non-relationnelle. On publie en base et on fait du tableau croisé dynamique (PARTITION BY)
- [x] https://www.data.gouv.fr/fr/datasets/donnees-de-comptabilite-generale-de-letat/, fichier 2012-2022-balances-des-comptes-de-letat.csv , on remet l'année en clef et on publie en base (sample). Et on voit comment faire pivot table
- [x] on peut aussi jouer avec https://opendata.lillemetropole.fr/explore/dataset/ouvrages-acquis-par-les-mediatheques-/table/
- [x] https://www.data.gouv.fr/fr/datasets/logements-vacants-du-parc-prive-par-anciennete-de-vacance-par-commune-et-par-epci/ et on publie. Publier aussi les communes et on fait la jointure 
- donnée de demande des valeurs foncières -> publier en geo, et faire une requête "toutes les parcelles situées dans un rayon de 5km autour de moi"
- et on commence par une donnée bidon simple. Vendeur de smoothie : 

## Vendeur de smoothie
```bash
psql -f smoothie.sql

# Explorer les tables, faire une jointure etc

# Puis on peut passer à une version + sophistiquée avec table pour les ingrédients
psql -f smoothie_v2.sql
```
```sql
# jointure multiple
select * from smoothiev2 JOIN smoothie_uses_ingredient ON smoothiev2.id=smoothie_uses_ingredient.smoothie_id JOIN ingredient ON smoothie_uses_ingredient.ingredient_id=ingredient.id;

# Liste des smoothies contenant de la pomme
select smoothiev2.name AS smoothie_name, price, currency from smoothiev2 JOIN smoothie_uses_ingredient ON smoothiev2.id=smoothie_uses_ingredient.smoothie_id JOIN ingredient ON smoothie_uses_ingredient.ingredient_id=ingredient.id WHERE ingredient.name = 'Pomme';

# Liste des smoothies avec liste des ingrédients
WITH s AS (select smoothiev2.id, smoothiev2.name AS smoothie_name, price, currency, ingredient.name as ingredient from smoothiev2 JOIN smoothie_uses_ingredient ON smoothiev2.id=smoothie_uses_ingredient.smoothie_id JOIN ingredient ON smoothie_uses_ingredient.ingredient_id=ingredient.id)
SELECT id, smoothie_name, price, currency, array_to_string(array_agg(ingredient), ' / ') AS ingredients FROM s GROUP BY id, smoothie_name, price, currency ORDER BY id;
```