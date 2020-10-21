/*elenco degli allievi che partecipano alla conferenza di Roger. Parto dall'informazione iscrizione.conferenza = 'C02'*/

SELECT Allievo.Cognome
FROM Allievo JOIN iscrizione ON (Iscrizione.Allievo = Allievo.IdAllievo)
WHERE Iscrizione.Conferenza = 'C02'