-- LABORATORY WORK 1
-- BY Kupar_Kristina
/*---------------------------------------------------------------------------
1.Створити схему даних з назвою – прізвище студента, у якій користувач може: 
створювати таблиці та видаляти з них дані
4 бали

---------------------------------------------------------------------------*/
--Код відповідь:

CREATE TABLESPACE "kupar"
DATAFILE 'kupar.dat'
SIZE 20M;

CREATE USER "kupar"
IDENTIFIED BY KUPAR
QUOTA 20M
DEFAULT TABLESPACE "kupar";

GRANT CREATE SESSION TO "kupar";
GRANT CREATE TABLE TO "kupar";
GRANT DROP TABLE TO "kupar";

/*---------------------------------------------------------------------------
2. Створити таблиці, у яких визначити поля та типи. Головні та зовнішні ключі 
створювати окремо від таблиць використовуючи команди ALTER TABLE. 
Студент здає роботу викладачу.
4 бали

---------------------------------------------------------------------------*/
--Код відповідь:


CREATE TABLE STUDENT (
    stName   char(20)  NOT NULL,
    stid     int       NOT NULL,
    rating   decimel(1,2) NULL
);

ALTER STUDENT
    ADD CONSTRAINT PK_STUDENT PRIMARY KEY (stName, stid);


  
/* --------------------------------------------------------------------------- 
3. Надати додаткові права користувачеві (створеному у пункті № 1) для створення таблиць, 
внесення даних у таблиці та виконання вибірок використовуючи команду ALTER/GRANT. 
Згенерувати базу даних використовуючи код з теки OracleScript та виконати запити: 

---------------------------------------------------------------------------*/
--Код відповідь:

GRANT CREATE TABLE TO "kupar";
GRANT SELECT ANY TABLE TO "kupar";
GRANT ALTER ANY TABLE TO "kupar";






/*---------------------------------------------------------------------------
3.a. 
Як звуть покупців, що купляли найдешевший товар.
Виконати завдання в Алгебрі Кодда. 
4 бали
---------------------------------------------------------------------------*/

--Код відповідь:














/*---------------------------------------------------------------------------
3.b. 
Вивести імена покупців, що не мають поштової адреси, але мають замовлення.
Виконати завдання в SQL. 
4 бали

---------------------------------------------------------------------------*/

--Код відповідь:















/*---------------------------------------------------------------------------
c. 
Вивести імена покупців у верхньому регістрі,назвавши це поле customer_name, що не купили жодного товару, але мають замовлення.
Виконати завдання в SQL. 
4 бали

---------------------------------------------------------------------------*/
--Код відповідь:

