1) Pour afficher la liste des pays ou simplon est present:
 select * from pays left join fabrique on id_pays = fabrique.id_pays;
+----+-----------+--------+------+-------------+---------+-----------+--------------------------+---------+
| id | nom       | ville  | id   | nom         | adresse | tel       | email                    | id_pays |
+----+-----------+--------+------+-------------+---------+-----------+--------------------------+---------+
|  1 | Sénégal   | Dakar  |    1 | Simplonauf  | FANN    | 338242927 | simploaufdakar@gmail.com |       1 |
|  2 | Maroc     | Rabat  |    1 | Simplonauf  | FANN    | 338242927 | simploaufdakar@gmail.com |       1 |
|  3 | Mali      | Bamako |    1 | Simplonauf  | FANN    | 338242927 | simploaufdakar@gmail.com |       1 |
|  1 | Sénégal   | Dakar  |    2 | Simplonrab  | RABAT   |   6001149 | simplonrabat@gmail.com   |       2 |
|  2 | Maroc     | Rabat  |    2 | Simplonrab  | RABAT   |   6001149 | simplonrabat@gmail.com   |       2 |
|  3 | Mali      | Bamako |    2 | Simplonrab  | RABAT   |   6001149 | simplonrabat@gmail.com   |       2 |
|  1 | Sénégal   | Dakar  |    3 | Simplonmali | BAMAKO  |   4431105 | simplonbamako@gmail.com  |       3 |
|  2 | Maroc     | Rabat  |    3 | Simplonmali | BAMAKO  |   4431105 | simplonbamako@gmail.com  |       3 |
|  3 | Mali      | Bamako |    3 | Simplonmali | BAMAKO  |   4431105 | simplonbamako@gmail.com  |       3 |
+----+-----------+--------+------+-------------+---------+-----------+--------------------------+---------+


2) Afficher la liste des fabrique de la ville de Dakar
 select nom from fabrique where id_pays = 1;
+------------+
| nom        |
+------------+
| Simplonauf |
+------------+
4) pour afficher le nombre dapprenant par fabrique
select nombre_apprenant from fabrique;
ERROR 1054 (42S22): Unknown column 'nombre_apprenant' in 'field list'

 5)Afficher la liste des réferentiels fabrique:
 select *from referentiel;
+----+------------------+------------+
| id | nom_ref          | nombre_ref |
+----+------------------+------------+
|  1 | referent digital |          1 |
|  2 | developpement    |          1 |
|  3 | design           |          1 |
+----+------------------+------------+

6) Afficher la liste des apprenants qui ont au moins 1 contrat:
select * from apprenant left join contrat on id_apprenant = situation_professionnelle = 'en poste';
+----+--------+--------+-----------+----------------+------+-----------------------+-----------+----------------+------------+-------------+------+-------+--------------+------------+----------+---------------+--------------+---------------------------+
| id | nom    | prenom | statut    | date_naissance | sexe | email                 | tel       | id_referentiel | id_cohorte | id_fabrique | id   | poste | type_contrat | date_debut | date_fin | nom_structure | id_apprenant | situation_professionnelle |
+----+--------+--------+-----------+----------------+------+-----------------------+-----------+----------------+------------+-------------+------+-------+--------------+------------+----------+---------------+--------------+---------------------------+
|  1 | kaire  | ndack  | alumni    | 1996-01-03     | 0    | ndackkayre@gmail.com  | 778423794 |              1 |          1 |           1 | NULL | NULL  | NULL         | NULL       | NULL     | NULL          |         NULL | NULL                      |
|  2 | niane  | amy    | alumni    | 1990-07-07     | 0    | amyniane591@gmail.com | 777660584 |              2 |          2 |           2 | NULL | NULL  | NULL         | NULL       | NULL     | NULL          |         NULL | NULL                      |
|  3 | ndiaye | bachir | apprenant | 1990-01-01     | 1    | bachirniaye@gmail.com | 771234567 |              3 |          3 |           3 | NULL | NULL  | NULL         | NULL       | NULL     | NULL          |         NULL | NULL                      |
+----+--------+--------+-----------+----------------+------+-----------------------+-----------+----------------+------------+-------------+------+-------+--------------+------------+----------+---------------+--------------+---------------------------+

7) Ecrire l'ordre sql qui permet d'ajouter un champ 'ouvert' de type boolean a la table colonne cohorte:
mysql> alter table cohorte add ouvert boolean;
Query OK, 0 rows affected (0.83 sec)

8) Modifier le type du champ "sexe" en mettant "char1"
alter table apprenant modify sexe char (1);
Query OK, 3 rows affected (1.07 sec)
