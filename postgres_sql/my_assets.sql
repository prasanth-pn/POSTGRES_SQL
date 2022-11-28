-- this table stores my stocks 
DROP TABLE  IF EXISTS stocks;

CREATE TABLE stocks(
    id serial PRIMARY KEY,--primary key the values are unique
    symbol text NOT NULL,
    num_shares integer NOT NULL,
    date_acquired date NOT NULL
);

