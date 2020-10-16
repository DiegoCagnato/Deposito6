/*elenco degli allievi che partecipano alla conferenza di Roger. Parto dall'info Conferenza.NomeConferenza = 'Roger'*/

SELECT Allievo.Cognome
FROM Allievo JOIN iscrizione JOIN Conferenza 
      ON (Iscrizione.Allievo = Allievo.IdAllievo) AND (Conferenza.IdConferenza = Iscrizione.Conferenza)
WHERE Conferenza.NomeConferenziere = 'Roger'