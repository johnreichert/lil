

INSERT INTO roles (role_id, name, created_by, updated_by) VALUES ('admin', 'Administrator', 'system', 'system');
INSERT INTO roles (role_id, name, created_by, updated_by) VALUES ('lawyer', 'Lawyer', 'system', 'system');
INSERT INTO roles (role_id, name, created_by, updated_by) VALUES ('client', 'Client', 'system', 'system');

INSERT INTO people (person_id, first_name, last_name, created_by, updated_by) VALUES ('admin', 'System', 'Admin', 'system', 'system');
INSERT INTO person_roles (person_role_id, person_id, role_id, identity, password, created_by, updated_by) VALUES ('admin', 'admin', 'admin', 'admin', 'password', 'sysetm', 'system');
