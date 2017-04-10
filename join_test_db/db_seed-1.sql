USE join_test_db;

INSERT INTO roles (name)
VALUES
	('admin'),
	('author'),
	('reviewer'),
	('commenter');

INSERT INTO users (name, email, role_id)
VALUES
	('bob', 'bob@example.com', 1),
	('joe', 'joe@example.com', 2),
	('sally', 'sally@example.com', 3),
	('adam', 'adam@example.com', 3),
	('jane', 'jane@example.com', NULL),
	('mike', 'mike@example.com', NULL);