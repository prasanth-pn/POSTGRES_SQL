--the dates when stocks were bought 
SELECT S.symbol,S.date_acquired,S.num_shares
FROM stocks AS S;


--stocks where i owned more than 200 shares
SELECT S.symbol, S.num_shares
FROM stocks AS S
WHERE S.num_shares>1200;

 SELECT COUNT(*) AS total_rows
 FROM stocks;
