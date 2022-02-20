--Вибрати всі записи з таблиці "teams" 1 (ALL)
--SELECT * FROM teams

-- Вибрати лише одне поле team_name з таблиці teams 2 (ONE_F)
--select team_name from teams

-- Вибрати два поля(team_name, team_region) з таблиці teams 3 (MORE THAN 1 F)
-- select team_name, team_region from teams

-- Вибрати лише унікальні дані team_name з таблиці teams 4 (ALL_F, DISTINCT)
--select DISTINCT * from teams

-- Вибрати лише унікальні дані team_name з таблиці teams 5 (ONE_f, DISTINCT)
-- select DISTINCT team_name from teams

-- Вибрати лише унікальні дані за двома стовпцями (team_name та team_region) з таблиці teams 6 (MORE THAN 1 F, DISTINCT)
-- select DISTINCT team_name, team_region from teams

--Вибрати з таблиці "teams" всі записи(всі поля) з регіоном 'America/Sao_Paulo' 7 (ALL_F, WHERE)
--select * from teams where team_region = 'America/Sao_Paulo';

--Вибрати з таблиці "teams" одне поле(team_name)з регіоном 'America/Sao_Paulo' 8  (ONE_F, WHERE)
--select team_name from teams where team_region = 'America/Sao_Paulo';

--Вибрати з таблиці "teams" декілька полів(team_name,team_region)з регіоном 'America/Sao_Paulo' 9 (MORE_THAN_1_F, WHERE)
--select team_name, team_region from teams where team_region = 'America/Sao_Paulo';

--Вибрати з таблиці "teams" всі записи(всі поля) з регіоном не 'America/Sao_Paulo' 10 (ALL_F, WHERE, NOT)
--select * from teams where not team_region = 'America/Sao_Paulo';

--Вибрати з таблиці "teams" одне поле(team_name)з регіоном не 'America/Sao_Paulo' 11  (ONE_F, WHERE, NOT)
--select team_name from teams where not team_region = 'America/Sao_Paulo';

--Вибрати з таблиці "teams" декілька полів(team_name,team_region)з регіоном не 'America/Sao_Paulo' 12 (MORE_THAN_1_F, WHERE, NOT)
--select team_name, team_region from teams where not team_region = 'America/Sao_Paulo';

--Вибрати з таблиці "teams" всі записи(всі поля) з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 13 (ALL_F, WHERE, AND)
--select * from teams where team_region = 'America/Sao_Paulo' and team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" всі записи з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 14 (ALL_F, WHERE, OR)
--select * from teams where team_region = 'America/Sao_Paulo' or team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" всі записи(всі поля) з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 15  (ALL_F, NOT AND)9
--select * from teams where not team_region = 'America/Sao_Paulo' and team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" всі записи(всі поля) з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 16  (All_F, AND NOT)9
--select * from teams where team_region = 'America/Sao_Paulo' and not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" всі записи(всі поля) з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 17 (All_F, NOT AND NOT)9
--select * from teams where not team_region = 'America/Sao_Paulo' and not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" всі записи з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 18 (ALL_F, NOT OR))
--select * from teams where not team_region = 'America/Sao_Paulo' or team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" всі записи з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 19 (ALL_F, OR NOT)
--select * from teams where team_region = 'America/Sao_Paulo' or not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" всі записи з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 20 (ALL_F, NOT OR NOT OR)
--select * from teams where not team_region = 'America/Sao_Paulo' or not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" всі назви команди(одне поле) з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 21 (ONE_F, WHERE, AND)
--select team_name from teams where team_region = 'America/Sao_Paulo' and team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" одне поле з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 22 (ONE_F, WHERE, OR)
--select team_name from teams where team_region = 'America/Sao_Paulo' or team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" одне поле з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 23  (ONE_F, NOT AND)9
--select team_name from teams where not team_region = 'America/Sao_Paulo' and team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" одне поле з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 24 (ONE_F, AND NOT)9
--select team_name from teams where team_region = 'America/Sao_Paulo' and not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" одне поле з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 25 (ONE_F, NOT AND NOT)9
--select team_name from teams where not team_region = 'America/Sao_Paulo' and not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" одне поле з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 26 (ONE_F, NOT OR))
--select team_name from teams where not team_region = 'America/Sao_Paulo' or team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" одне поле з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 27 (ONE_F, OR NOT)
--select team_name from teams where team_region = 'America/Sao_Paulo' or not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" одне поле з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 28 (ONE_F, NOT OR NOT OR)
--select team_name from teams where not team_region = 'America/Sao_Paulo' or not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" декілька полів(team_name, team_region) з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 29 (MORE_THAN_ONE_F, WHERE, AND)
--select team_name, team_region from teams where team_region = 'America/Sao_Paulo' and team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" декілька полів(team_name, team_region) з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 30 (MORE_THAN_ONE_F, WHERE, OR)
--select team_name, team_region from teams where team_region = 'America/Sao_Paulo' or team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" декілька полів(team_name, team_region) з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 31 (MORE_THAN_ONE_F, NOT AND)9
--select team_name, team_region from teams where not team_region = 'America/Sao_Paulo' and team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" декілька полів(team_name, team_region) з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 32 (MORE_THAN_ONE_F, AND NOT)9
--select team_name, team_region from teams where team_region = 'America/Sao_Paulo' and not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" декілька полів(team_name, team_region) з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' 33  (MORE_THAN_ONE_F, NOT AND NOT)9
--select team_name, team_region from teams where not team_region = 'America/Sao_Paulo' and not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" декілька полів(team_name, team_region) з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 34 (MORE_THAN_ONE_F, NOT OR))
--select team_name, team_region from teams where not team_region = 'America/Sao_Paulo' or team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" декілька полів(team_name, team_region) з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 35 (MORE_THAN_ONE_F, OR NOT)
--select team_name, team_region from teams where team_region = 'America/Sao_Paulo' or not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" декілька полів(team_name, team_region) з team name Evil Geniuses або з регіоном 'America/Sao_Paulo' 36 (MORE_THAN_ONE_F, NOT OR NOT OR)
--select team_name, team_region from teams where not team_region = 'America/Sao_Paulo' or not team_name = 'Evil Geniuses';

--Вибрати з таблиці "teams" всі поля з team name Evil Geniuses і з регіоном 'America/Sao_Paulo' або назвою IG 37 (ALL_F, AND OR WO())
--select * from teams where team_region = 'America/Sao_Paulo' and team_name = 'Evil Geniuses' or team_name = 'IG';

--Вибрати з таблиці "teams" всі поля з регіоном 'Asia/Jakarta' і з team_name Nigma Galaxy або PSG.LGS 38 (ALL_F, AND (OR) )
--select * from teams where team_region = 'Asia/Jakarta' and (team_name = 'Nigma Galaxy' or team_name = 'PSG.LGS');

--Вибрати найбільший розмір призових з таблиці "team_mates"  39
--Select max(prize_money) from team_mates;

--Вибрати найменший розмір призових з таблиці "team_mates"  40
--Select min(prize_money) from team_mates;

--Вибрати найбільший розмір призових з таблиці "team_mates"  41
--Select sum(prize_money) from team_mates;

--Вибрати найбільший розмір призових з таблиці "team_mates"  42
--Select count(prize_money) from team_mates;

--Вибрати найбільший розмір призових з таблиці "team_mates"  43
--Select avg(prize_money) from team_mates;

--Вибрати нікнейми гравців з рангом вище 10 з "team_mates"  44
--Select user_name, world_rank from team_mates where world_rank<10;

--Вибрати нікнейми гравців з рангом нижче або дорівню 25 з "team_mates"  45
--Select user_name, world_rank from team_mates where world_rank<=25;

--Вибрати нікнейми гравців з рангом нижче 25 з "team_mates"  46
--Select user_name, world_rank from team_mates where world_rank>25;

--Вибрати нікнейми гравців з рангом нижче або дорівнює 25 з "team_mates"   47
--Select user_name, world_rank from team_mates where world_rank>=25;

--SELECT avg(approx_total_winnings), user_name  48
  --FROM team_mates
  --GROUP BY user_name
  --HAVING avg(approx_total_winnings)>100000;

--Відсортувати гравці за рангами у порядку спадання  49
--SELECT user_name, world_rank FROM team_mates ORDER BY world_rank;

--Відсортувати гравці за рангами у порядку зростання  50
--SELECT user_name, world_rank FROM team_mates ORDER BY world_rank DESC;

--Вибрати гравців за рейтингом, у яких world_rank знаходиться в районі від 10 до 20  51
--SELECT user_name, world_rank FROM team_mates
  --WHERE world_rank BETWEEN 10 AND 20;
  
  
--Вибираємо всі рядки які починаються з 'mi'  52
--SELECT * FROM teamate_roles WHERE role_name LIKE 'mi%'
  
--Вибираємо всі рядки які закінчуються на '%t'   53
--SELECT * FROM teamate_roles WHERE role_name LIKE '%t'
  
--Вибираємо всі рядки які містять у собі 'f'  54
--SELECT * FROM teamate_roles WHERE role_name LIKE '%f%'

--Вибираємо всі рядки які містять у собі 'f' 3 буквою  55
--SELECT * FROM teamate_roles WHERE role_name LIKE '__f%'

--Вибираємо всі рядки які починаються з 's' і мають не менше 10 букв  56
--SELECT * FROM teamate_roles WHERE role_name LIKE 's_________%'

--Вибираємо всі рядки які починаються з 's' і мають не менше 10 букв  57
--SELECT * FROM teamate_roles WHERE role_name LIKE 's_________%'

--Вибираємо всі рядки які починаються з 's' і закінчуються на 't'  58
--SELECT * FROM teamate_roles WHERE role_name LIKE 's%t'

--Вибираємо всі записи, в яких ім'я команди дорівнює IG, Evil Geniuses або Virtus PRO  59
--SELECT team_name, team_region FROM teams
--WHERE team_name IN ('IG', 'Evil Geniuses', 'Virtus PRO');

--Вибираємо верхні 3 рядки усіх стовпців 60
--SELECT * FROM teams LIMIT 3;

--SELECT TOP(4) * FROM arenas;  61
--SELECT TOP 50 PERCENT * FROM arenas;  62

-- Вибираю стовпці ім'я команди, регіон, та гравця, доки є збіг за id для таблиць team_mates та teams  63
-- SELECT teams.team_name, teams.team_region, team_mates.user_name
-- FROM teams
-- INNER JOIN team_mates ON teams.id=team_mates.team_id;

--Вибираю стовпці ім'я команди, регіон, та гравця, доки є збіг за id для таблиць team_mates та teams та teamate_roles  64
-- SELECT teams.team_name, teams.team_region, team_mates.user_name, teamate_roles.role_name
-- FROM ((teams
-- INNER JOIN team_mates ON teams.id=team_mates.team_id)
-- INNER JOIN teamate_roles ON team_mates.role_id=teamate_roles.id);

-- Вибираю стовпці ім'я команди, регіон, та гравця, доки є збіг за id для таблиць team_mates та teams Left join  65
-- SELECT teams.team_name, teams.team_region, team_mates.user_name 
-- FROM teams
-- LEFT JOIN team_mates
-- ON teams.id=team_mates.team_id;

-- Вибираю стовпці ім'я команди, регіон, та гравця, доки є збіг за id для таблиць team_mates та teams Right join  66
-- SELECT teams.team_name, teams.team_region, team_mates.user_name 
-- FROM teams
-- RIGHT JOIN team_mates
-- ON teams.id=team_mates.team_id;

-- Вибираю стовпці ім'я команди, регіон, та гравця, доки є збіг за id для таблиць team_mates та teams Right join  67
-- SELECT teams.team_name, teams.team_region, team_mates.user_name 
-- FROM teams
-- FULL OUTER JOIN team_mates
-- ON teams.id=team_mates.team_id
-- ORDER BY team_mates.user_name;

-- Створюю набір значень поєднуючи arena_name i team_region вибираю унікальні значення  68
-- SELECT team_region FROM teams
-- UNION
-- SELECT arena_name FROM arenas
-- ORDER by team_region;

-- Створюю набір значень поєднуючи arena_name i team_region поєдную усі значення  68
-- SELECT team_region FROM teams
-- UNION ALL
-- SELECT arena_name FROM arenas
-- ORDER by team_region;


 

