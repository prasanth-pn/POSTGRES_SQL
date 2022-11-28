DROP TABLE IF EXISTS my_stocks;

CREATE TABLE my_stocks(
    stock_id text NOT NULL,
    name_in text NOT NUll,
    created_at timestamp (0)with time zone NOT NULL DEFAULT NOW()

);
INSERT INTO my_stocks(stock_id,name_in)
VALUES('45'),
('345'),
('678');
VALUES('prasanth'),
('praveen'),
('praveen');