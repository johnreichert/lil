
CREATE TABLE people (
    person_id TEXT,
    first_name TEXT,
    middle_name TEXT,
    last_name TEXT,
    gender TEXT,
    date_of_birth BIGINT,
    created_at BIGINT DEFAULT extract(epoch from now()) * 1000,
    created_by TEXT,
    updated_at BIGINT DEFAULT extract(epoch from now()) * 1000,
    updated_by TEXT,
    PRIMARY KEY (person_id)
);

CREATE TABLE person_roles (
    person_role_id TEXT,
    person_id TEXT,
    role_id TEXT,
    identity TEXT,
    password TEXT,
    salt TEXT,
    created_at BIGINT DEFAULT extract(epoch from now()) * 1000,
    created_by TEXT,
    updated_at BIGINT DEFAULT extract(epoch from now()) * 1000,
    updated_by TEXT,
    PRIMARY KEY (person_role_id)
);

CREATE INDEX person_roles_1 ON person_roles(person_id);

CREATE TABLE roles (
    role_id TEXT,
    name TEXT,
    created_at BIGINT DEFAULT extract(epoch from now()) * 1000,
    created_by TEXT,
    updated_at BIGINT DEFAULT extract(epoch from now()) * 1000,
    updated_by TEXT,
    PRIMARY KEY (role_id)    
);

CREATE INDEX roles_1 ON person_roles(role_id);

