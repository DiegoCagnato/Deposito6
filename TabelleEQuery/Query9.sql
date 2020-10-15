/* stampo i nomi delle citta di residenza degli allievi con le relative occorrenze */


SELECT CittaResidenza, COUNT(*)
FROM Allievo
GROUP BY CittaResidenza