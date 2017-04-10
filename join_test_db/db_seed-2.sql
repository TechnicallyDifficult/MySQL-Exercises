USE join_test_db;

INSERT INTO users (name, email, role_id)
VALUES
	('name', 'name@email.com', NULL),
	('notadmin', 'notadmin@email.com', 2),
	('you', 'you@email.com', 2),
	('person', 'person@email.com', 2);