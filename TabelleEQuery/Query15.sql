/* monteore delle lezioni di un determinato insegnante */

SELECT SUM(DurataLezione) AS MonteOre

FROM LezioniPrivate

WHERE Insegnante = (SELECT IdInsegnante FROM Insegnante WHERE Cognome = 'Stefanenko')
