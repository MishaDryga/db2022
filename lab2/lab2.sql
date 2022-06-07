--Вибрати всі записи з таблиці "racer" 1 (ALL)
--SELECT * FROM racer

-- Вибрати лише одне поле name з таблиці racer 2 (ONE_F)
--select name from racer

-- Вибрати два поля(name, team) з таблиці racer 3 (MORE THAN 1 F)
-- select name, team from racer

-- Вибрати лише унікальні дані name з таблиці racer 4 (ALL_F, DISTINCT)
--select DISTINCT * from racer

-- Вибрати лише унікальні дані name з таблиці racer 5 (ONE_f, DISTINCT)
-- select DISTINCT name from racer

-- Вибрати лише унікальні дані за двома стовпцями (name та team) з таблиці racer 6 (MORE THAN 1 F, DISTINCT)
-- select DISTINCT name, team from racer

--Вибрати з таблиці "racer" всі записи(всі поля) з командою 'China' 7 (ALL_F, WHERE)
--select * from racer where team = 'China';

--Вибрати з таблиці "racer" одне поле(name)з командою 'China' 8  (ONE_F, WHERE)
--select name from racer where team = 'China';

--Вибрати з таблиці "racer" декілька полів(name,team)з командою 'China' 9 (MORE_THAN_1_F, WHERE)
--select name, team from racer where team = 'China';

--Вибрати з таблиці "racer" всі записи(всі поля) з командою не 'China' 10 (ALL_F, WHERE, NOT)
--select * from racer where not team = 'China';

--Вибрати з таблиці "racer" одне поле(name)з командою не 'China' 11  (ONE_F, WHERE, NOT)
--select name from racer where not team = 'China';

--Вибрати з таблиці "racer" декілька полів(name,team)з командою не 'China' 12 (MORE_THAN_1_F, WHERE, NOT)
--select name, team from racer where not team = 'China';

--Вибрати з таблиці "racer" всі записи(всі поля) з ім'ям Adrian і з командою 'China' 13 (ALL_F, WHERE, AND)
--select * from racer where team = 'China' and name = 'Adrian';

--Вибрати з таблиці "racer" всі записи з ім'ям Adrian або з командою 'China' 14 (ALL_F, WHERE, OR)
--select * from racer where team = 'China' or name = 'Adrian';

--Вибрати з таблиці "racer" всі записи(всі поля) з ім'ям Adrian і з командою 'China' 15  (ALL_F, NOT AND)9
--select * from racer where not team = 'China' and name = 'Adrian';

--Вибрати з таблиці "racer" всі записи(всі поля) з ім'ям Adrian і з командою 'China' 16  (All_F, AND NOT)9
--select * from racer where team = 'China' and not name = 'Adrian';

--Вибрати з таблиці "racer" всі записи(всі поля) з ім'ям Adrian і з командою 'China' 17 (All_F, NOT AND NOT)9
--select * from racer where not team = 'China' and not name = 'Adrian';

--Вибрати з таблиці "racer" всі записи з ім'ям Adrian або з командою 'China' 18 (ALL_F, NOT OR))
--select * from racer where not team = 'China' or name = 'Adrian';

--Вибрати з таблиці "racer" всі записи з ім'ям Adrian або з командою 'China' 19 (ALL_F, OR NOT)
--select * from racer where team = 'China' or not name = 'Adrian';

--Вибрати з таблиці "racer" всі записи з ім'ям Adrian або з командою 'China' 20 (ALL_F, NOT OR NOT OR)
--select * from racer where not team = 'China' or not name = 'Adrian';

--Вибрати з таблиці "racer" всі назви команди(одне поле) з ім'ям Adrian і з командою 'China' 21 (ONE_F, WHERE, AND)
--select name from racer where team = 'China' and name = 'Adrian';

--Вибрати з таблиці "racer" одне поле з ім'ям Adrian або з командою 'China' 22 (ONE_F, WHERE, OR)
--select name from racer where team = 'China' or name = 'Adrian';

--Вибрати з таблиці "racer" одне поле з ім'ям Adrian і з командою 'China' 23  (ONE_F, NOT AND)9
--select name from racer where not team = 'China' and name = 'Adrian';

--Вибрати з таблиці "racer" одне поле з ім'ям Adrian і з командою 'China' 24 (ONE_F, AND NOT)9
--select name from racer where team = 'China' and not name = 'Adrian';

--Вибрати з таблиці "racer" одне поле з ім'ям Adrian і з командою 'China' 25 (ONE_F, NOT AND NOT)9
--select name from racer where not team = 'China' and not name = 'Adrian';

--Вибрати з таблиці "racer" одне поле з ім'ям Adrian або з командою 'China' 26 (ONE_F, NOT OR))
--select name from racer where not team = 'China' or name = 'Adrian';

--Вибрати з таблиці "racer" одне поле з ім'ям Adrian або з командою 'China' 27 (ONE_F, OR NOT)
--select name from racer where team = 'China' or not name = 'Adrian';

--Вибрати з таблиці "racer" одне поле з ім'ям Adrian або з командою 'China' 28 (ONE_F, NOT OR NOT OR)
--select name from racer where not team = 'China' or not name = 'Adrian';

--Вибрати з таблиці "racer" декілька полів(name, team) з ім'ям Adrian і з командою 'China' 29 (MORE_THAN_ONE_F, WHERE, AND)
--select name, team from racer where team = 'China' and name = 'Adrian';

--Вибрати з таблиці "racer" декілька полів(name, team) з ім'ям Adrian або з командою 'China' 30 (MORE_THAN_ONE_F, WHERE, OR)
--select name, team from racer where team = 'China' or name = 'Adrian';

--Вибрати з таблиці "racer" декілька полів(name, team) з ім'ям Adrian і з командою 'China' 31 (MORE_THAN_ONE_F, NOT AND)9
--select name, team from racer where not team = 'China' and name = 'Adrian';

--Вибрати з таблиці "racer" декілька полів(name, team) з ім'ям Adrian і з командою 'China' 32 (MORE_THAN_ONE_F, AND NOT)9
--select name, team from racer where team = 'China' and not name = 'Adrian';

--Вибрати з таблиці "racer" декілька полів(name, team) з ім'ям Adrian і з командою 'China' 33  (MORE_THAN_ONE_F, NOT AND NOT)9
--select name, team from racer where not team = 'China' and not name = 'Adrian';

--Вибрати з таблиці "racer" декілька полів(name, team) з ім'ям Adrian або з командою 'China' 34 (MORE_THAN_ONE_F, NOT OR))
--select name, team from racer where not team = 'China' or name = 'Adrian';

--Вибрати з таблиці "racer" декілька полів(name, team) з ім'ям Adrian або з командою 'China' 35 (MORE_THAN_ONE_F, OR NOT)
--select name, team from racer where team = 'China' or not name = 'Adrian';

--Вибрати з таблиці "racer" декілька полів(name, team) з ім'ям Adrian або з командою 'China' 36 (MORE_THAN_ONE_F, NOT OR NOT OR)
--select name, team from racer where not team = 'China' or not name = 'Adrian';

--Вибрати з таблиці "racer" всі поля з ім'ям Adrian і з командою 'China' або ім'ям Amanda 37 (ALL_F, AND OR WO())
--select * from racer where team = 'China' and name = 'Adrian' or name = 'Amanda';

--Вибрати з таблиці "racer" всі поля з командою 'Poland' і з ім'ям Derrik або Sadye 38 (ALL_F, AND (OR) )
--select * from racer where team = 'Poland' and (name = 'Derrik' or name = 'Sadye');

--Вибрати найбільший розмір призових з таблиці "contract"  39
--Select max(prize) from contract;

--Вибрати найменший розмір призових з таблиці "contract"  40
--Select min(prize) from contract;

--Вибрати найбільший розмір призових з таблиці "contract"  41
--Select sum(prize) from contract;

--Вибрати найбільший розмір призових з таблиці "contract"  42
--Select count(prize) from contract;

--Вибрати найбільший розмір призових з таблиці "contract"  43
--Select avg(prize) from contract;

--Вибрати ID контракту з результатом вище 10 з "accidens"  44
--Select contract_id, result from accidens where result<10;

--Вибрати ID контракту з результатом нижче або дорівню 30 з "accidens"  45
--Select contract_id, result from accidens where result<=30;

--Вибрати ID контракту з результатом нижче 30 з "accidens"  46
--Select contract_id, result from accidens where result>30;

--Вибрати ID контракту з результатом нижче або дорівнює 30 з "accidens"   47
--Select contract_id, result from accidens where result>=30;

--Вибрати ID контракту з результатом нижче або дорівнює 30 з "accidens"   89
--Select contract_id, result from accidens where result>=30 and prize >100000;

--Вибрати ID контракту з результатом нижче або дорівнює 30 з "accidens"   90
--Select contract_id, result from accidens where result>=30 or prize >100000;

--Вибрати ID контракту з результатом нижче або дорівнює 30 з "accidens"   91
--Select contract_id, result from accidens where result>=30 and prize >100000 or prize > 200000;

--Вибрати ID контракту з результатом нижче або дорівнює 30 з "accidens"   92
--Select contract_id, result from accidens where result>=30 or (prize >100000 or prize > 200000);

-- SELECT contract_id, result  93
-- FROM accidens
-- WHERE break_down IS NULL;

-- SELECT contract_id, result   94
-- FROM accidens
-- WHERE break_down IS NOT NULL;

-- SELECT contract_id, result   95
-- FROM accidens
-- WHERE break_down IS NULL  AND result < 10;

-- SELECT contract_id, result   96
-- FROM accidens
-- WHERE break_down IS NOT NULL  OR result <= 20;

--SELECT avg(winnings), contract_id  48
  --FROM accidens
  --GROUP BY contract_id
  --HAVING avg(winnings)>100000;

--Відсортувати ID контракти за рангами у порядку спадання  49
--SELECT contract_id, result FROM accidens ORDER BY result;

--Відсортувати ID контракти за рангами у порядку зростання  50
--SELECT contract_id, result FROM accidens ORDER BY result DESC;

--Вибрати ID контракти за рейтингом, у яких result знаходиться в районі від 10 до 20  51
--SELECT contract_id, result FROM accidens
  --WHERE result BETWEEN 10 AND 20;
  
  
--Вибираємо всі рядки які починаються з 'Se'  52
--SELECT * FROM model WHERE brend LIKE 'Se%'
  
--Вибираємо всі рядки які закінчуються на '%er'   53
--SELECT * FROM model WHERE brend LIKE '%er'
  
--Вибираємо всі рядки які містять у собі 'n'  54
--SELECT * FROM model WHERE brend LIKE '%n%'

--Вибираємо всі рядки які містять у собі 'er' 3 буквами  55
--SELECT * FROM model WHERE brend LIKE '_____er%'

--Вибираємо всі рядки які починаються з 'C' і мають не менше 9 букв  56
--SELECT * FROM model WHERE brend LIKE 'C________%'

--Вибираємо всі рядки які починаються з 'S' і мають не менше 5 букв  57
--SELECT * FROM model WHERE brend LIKE 'S____%'

--Вибираємо всі рядки які починаються з 'C' і закінчуються на 'r'  58
--SELECT * FROM model WHERE brend LIKE 'C%r'

--Вибираємо всі записи, в яких ім'я дорівнює Amanda, Adrian або Claudia  59
--SELECT name, team FROM racer
--WHERE name IN ('Amanda', 'Adrian', 'Claudia');

--Вибираємо верхні 3 рядки усіх стовпців 60
--SELECT * FROM racer LIMIT 3;

--SELECT TOP(4) * FROM racer;  61

--SELECT TOP 50 PERCENT * FROM racer;  62

--SELECT TOP(4) * FROM racer 97
--WHERE name = "Amanda";

--SELECT * FROM racer 98
--WHERE name = "Amanda";
--FETCH FIRST 3 ROWS ONLY;

--SELECT TOP 50 PERCENT * FROM racer 99
--WHERE name = "Amanda";

--SELECT TOP 50 PERCENT * FROM racer 100
--WHERE name = "Amanda";
--ORDER BY team;


-- Вибираю стовпці ім'я гонщика, команда, та гравця, доки є збіг за id для таблиць contract та racer  63
-- SELECT racer.name, racer.team, contract.cars_id
-- FROM racer
-- INNER JOIN contract ON racer.id=contract.racer_id;

--Вибираю стовпці ім'я гонщика, команда, та ID машини, доки є збіг за id для таблиць contract та racer та teamate_roles  64
-- SELECT racer.name, racer.team, contract.cars_id, teamate_roles.role_name
-- FROM ((racer
-- INNER JOIN contract ON racer.id=contract.racer_id)
-- INNER JOIN teamate_roles ON contract.role_id=teamate_roles.id);

-- Вибираю стовпці ім'я гонщика, команда, та ID машини, доки є збіг за id для таблиць contract та racer Left join  65
-- SELECT racer.name, racer.team, contract.cars_id 
-- FROM racer
-- LEFT JOIN contract
-- ON racer.id=contract.racer_id;

-- Вибираю стовпці ім'я гонщика, команда, та ID машини, доки є збіг за id для таблиць contract та racer Right join  66
-- SELECT racer.name, racer.team, contract.cars_id 
-- FROM racer
-- RIGHT JOIN contract
-- ON racer.id=contract.racer_id;

-- Вибираю стовпці ім'я гонщика, команда, та ID машини, доки є збіг за id для таблиць contract та racer Right join  67
-- SELECT racer.name, racer.team, contract.cars_id 
-- FROM racer
-- FULL OUTER JOIN contract
-- ON racer.id=contract.racer_id
-- ORDER BY contract.cars_id;

-- Створюю набір значень поєднуючи racer_id i team вибираю унікальні значення  69
-- SELECT team FROM racer
-- UNION
-- SELECT racer_id FROM contract


-- Створюю набір значень поєднуючи racer_id i team вибираю унікальні значення  70
-- SELECT team FROM racer
-- UNION
-- SELECT racer_id FROM contract
-- ORDER by team;

-- Створюю набір значень поєднуючи racer_id i team поєдную усі значення  71
-- SELECT team FROM racer
-- UNION ALL
-- SELECT racer_id FROM contract

-- Створюю набір значень поєднуючи racer_id i team поєдную усі значення  72
-- SELECT team FROM racer
-- UNION ALL
-- SELECT racer_id FROM contract
-- ORDER by team;

-- Створюю набір значень поєднуючи racer_id i team поєдную усі значення  73
-- SELECT team FROM racer
-- WHERE team='Philippines'
-- UNION ALL
-- SELECT racer_id FROM contract

-- SELECT team FROM racer  74
-- WHERE team='Philippines'
-- UNION ALL
-- SELECT racer_id FROM contract
-- WHERE racer_id like '6%'

-- SELECT team FROM racer  75
-- WHERE team='Philippines'
-- UNION ALL
-- SELECT racer_id FROM contract
-- WHERE racer_id like '6%'
 
-- SELECT name  76
-- FROM racer
-- WHERE EXISTS (SELECT contract_id FROM contract WHERE contract.racer_id = racer.id AND result < 20);

-- SELECT contract_id  77
-- FROM contract
-- WHERE racer_id= ANY (SELECT id FROM racer WHERE result = 10);

-- SELECT contract_id  78
-- FROM contract
-- WHERE racer_id= ALL (SELECT id FROM racer WHERE result = 10);

-- SELECT * INTO contract  79
-- FROM name;

-- SELECT name, cars_id INTO contract  80
-- FROM name;

-- SELECT * INTO contract  81
-- FROM name
-- Where team='China';

-- SELECT * INTO contract  82
-- FROM name
-- Where team LIKE 'A%';

-- SELECT * INTO new_racer  83
-- FROM racer
-- WHERE 1 = 0;

-- INSERT INTO contract  84
-- SELECT * FROM racer

-- INSERT INTO contract  85
-- SELECT * FROM racer
-- Where team='China';

 -- INSERT INTO contract  86
-- SELECT * FROM racer
-- Where team LIKE 'С%';

-- INSERT INTO contract  87
-- SELECT name, team FROM racer
-- Where team='China';

-- SELECT name, team  88
-- FROM racer
-- ORDER BY
-- (CASE
--     WHEN name IS NULL THEN team
--     ELSE name
-- END);