1- test veritabanınızda employee isimli sütun bilgileri id(INTEGER),
name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee 
(
    id SERIAL primary key,
    name VARCHAR(50) NOT NULL,
    brithday DATE,
    email VARCHAR(100) UNIQUE
)

2- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 10 adet veri ekleyelim.

insert into employee (id, name, email, birthday) values (1, 'Dolorita Duggon', 'dduggon0@msu.edu', '2007-09-02');
insert into employee (id, name, email, birthday) values (2, 'Hilary Minker', 'hminker1@cornell.edu', null);
insert into employee (id, name, email, birthday) values (3, 'Tremain Burdass', 'tburdass2@taobao.com', '2012-08-13');
insert into employee (id, name, email, birthday) values (4, 'Christy McManamen', 'cmcmanamen3@home.pl', '1971-08-22');
insert into employee (id, name, email, birthday) values (5, 'Corbett Nussey', 'cnussey4@comsenz.com', '1944-01-21');
insert into employee (id, name, email, birthday) values (6, 'Sebastian Wasiela', 'swasiela5@ucsd.edu', '2022-06-20');
insert into employee (id, name, email, birthday) values (7, 'Agathe Dullard', 'adullard6@salon.com', '1927-05-08');
insert into employee (id, name, email, birthday) values (8, 'Isabeau Goly', 'igoly7@unblog.fr', '2021-06-03');
insert into employee (id, name, email, birthday) values (9, 'Rafa Miall', null, '1956-08-26');
insert into employee (id, name, email, birthday) values (10, 'Bobette Melmore', 'bmelmore9@soundcloud.com', '2021-07-29');

3- Sütunların her birine göre diğer sütunları güncelleyecek en az bir adet UPDATE işlemi yapalım.

UPDATE employee
SET name = 'AHMAD',
    email = 'Ahmad@gmail.com'
WHERE id = 2
RETURNING *;

4- Sütunların her birine göre ilgili satırı silecek en az bir adet DELETE işlemi yapalım.

DELETE FROM employee
WHERE id = 1;
