create table products (
	id int primary key,
	name text not null,
	category_name text not null,
	unit_price int not null
);

insert into products (id, name, category_name, unit_price) values (1, 'Ананас', 'Продукты', 500);
insert into products (id, name, category_name, unit_price) values (2, 'Собака', 'Животные', 80);
insert into products (id, name, category_name, unit_price) values (3, 'Дизель', 'Транспорт', 80);
insert into products (id, name, category_name, unit_price) values (4, 'Парк атракционов', 'Развлечения', 500);
insert into products (id, name, category_name, unit_price) values (5, 'Штаны', 'Одежда', 8500);
insert into products (id, name, category_name, unit_price) values (6, 'Курсы Hexlet', 'Образование', 100000);
insert into products (id, name, category_name, unit_price) values (7, 'Курс йоги', 'Здоровье', 25000);
insert into products (id, name, category_name, unit_price) values (8, 'Погашение кредита', 'Кредиты', 89000);
insert into products (id, name, category_name, unit_price) values (9, 'Айфон', 'Подарки', 120000);


CREATE TABLE family_members (
    id INT PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    date_of_birth DATE NOT NULL
);

INSERT INTO family_members (id, name, date_of_birth) VALUES
(1, 'Павлов Андрей Викторович', '1984-05-12'),
(2, 'Павлова Екатерина Алексеевна', '1989-08-25'),
(3, 'Павлов Михаил Андреевич', '2012-04-15'),
(4, 'Сидорова Ольга Петровна', '1960-11-05'),
(5, 'Николаев Дмитрий Иванович', '1981-07-20');


CREATE TABLE family_members_job (
    id INT PRIMARY KEY,
    name TEXT NOT NULL,
    position TEXT NOT NULL,
    organisation TEXT NOT NULL,
    salary INT NOT NULL,
    start_date DATE NOT NULL,
    FOREIGN KEY (name) REFERENCES family_members(name) ON DELETE CASCADE
);

INSERT INTO family_members_job (id, name, position, organisation, salary, start_date) VALUES
(1, 'Павлов Андрей Викторович', 'Программист', 'ООО "СофтТех"', 95000, '2016-06-01'),
(2, 'Павлова Екатерина Алексеевна', 'Экономист', 'АО "БанкФинанс"', 82000, '2014-03-10'),
(3, 'Сидорова Ольга Петровна', 'Учитель', 'Средняя школа №12', 28000, '1998-09-01'),
(4, 'Николаев Дмитрий Иванович', 'Водитель', 'Частный перевозчик', 35000, '2021-02-15');


CREATE TABLE expense_products (
    id INT PRIMARY KEY,
    purchase_date DATE NOT NULL,
    name TEXT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (name) REFERENCES family_members(name) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

INSERT INTO expense_products (id, purchase_date, name, product_id, quantity) VALUES
(1, '2025-02-01', 'Павлов Андрей Викторович', 1, 3),
(2, '2025-02-01', 'Павлов Андрей Викторович', 2, 2),
(3, '2025-02-01', 'Павлов Андрей Викторович', 2, 1),
(4, '2025-02-06', 'Павлова Екатерина Алексеевна', 5, 1),
(5, '2025-02-09', 'Николаев Дмитрий Иванович', 3, 20),
(6, '2025-02-12', 'Сидорова Ольга Петровна', 7, 3),
(7, '2025-02-18', 'Павлов Андрей Викторович', 8, 1),
(8, '2025-02-22', 'Павлова Екатерина Алексеевна', 9, 1),
(9, '2025-02-22', 'Павлов Михаил Андреевич', 4, 1);