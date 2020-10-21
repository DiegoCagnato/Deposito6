/*stampo l'età dell'allievo più giovane*/
SELECT MIN(EXTRACT(YEAR FROM CURDATE())-EXTRACT(YEAR FROM DataNascita)) AS EtaPiuGiovane
FROM Allievo